# HowTheyVote.eu Database
HowTheyVote.eu collects data about European Parliament roll-call votes and related data such as biographical information about MEPs and political groups. We provide a full export of the database in CSV format.

## Status
The database export is experimental and the format of the tables may change in the future.

## License
The HowTheyVote.eu data is made available under an open license. If you use data published by HowTheyVote.eu please make sure you’ve read the [license terms](https://howtheyvote.eu/about#license) and provide proper attribution.

## Tables

### members.csv

Each row represents a Member of the European Parliament (MEP).

| Column          | Type              | Description                                                                            |
|-----------------|-------------------|----------------------------------------------------------------------------------------|
| `id`            | integer           | Member ID as used by the [MEP Directory](https://www.europarl.europa.eu/meps/en/home). |
| `first_name`    | string            | First name                                                                             |
| `last_name`     | string            | Last name                                                                              |
| `country_code`  | string            | 3-letter ISO-3166-1 code                                                               |
| `date_of_birth` | date (optional)   | Date of birth                                                                          |
| `email`         | string (optional) | Email address                                                                          |
| `facebook`      | string (optional) | Facebook profile URL                                                                   |
| `twitter`       | string (optional) | Twitter account URL                                                                    |

### countries.csv

Each row represents an EU member state.

| Column        | Type   | Description                                                         |
|---------------|--------|---------------------------------------------------------------------|
| `code`        | string | 3-letter ISO-3166-1 code                                            |
| `iso_alpha_2` | string | 2-letter ISO-3166-1 code                                            |
| `label`       | string | Label as published by the Publications Office of the European Union |

### groups.csv

Each row represents a political group in the European Parliament.

| Column           | Type   | Description                                                                                       |
|------------------|--------|---------------------------------------------------------------------------------------------------|
| `code`           | string | Unique identifier for the political group                                                         |
| `official_label` | string | Official label as published by the Publications Office of the European Union                      |
| `label`          | string | Label based on the official label. Prefixes and suffixes such as "Group" are removed for clarity. |
| `short_label`    | string | Short label or abbreviation                                                                       |

### group_memberships.csv

Each row represents a membership of an MEP in a political group.

MEPs can change their political group during the term, i.e., each MEP is part of one or
more political groups over the course of a term. Non-attached MEPs are a member of the
`NI` group.

| Column       | Type            | Description                                                 |
|--------------|-----------------|-------------------------------------------------------------|
| `member_id`  | integer         | Member ID                                                   |
| `group_code` | string          | Group code                                                  |
| `term`       | integer         | Parliamentary term                                          |
| `start_date` | date            | Start date                                                  |
| `end_date`   | date (optional) | End date. If empty, the MEP the membership is still active. |

### votes.csv

Each row represents a roll-call vote in plenary.

| Column                | Type              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-----------------------|-------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                  | integer           | Vote ID                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `timestamp`           | dateTime          | Date and time of the vote                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `display_title`       | string (optional) | Title that can be used to refer to the vote. In most cases, this is the title published in the roll-call vote results. If the title in the roll-call vote results is empty, this falls back to the procedure title.                                                                                                                                                                                                                                           |
| `reference`           | string (optional) | Reference to a plenary document such as a report or a resolution                                                                                                                                                                                                                                                                                                                                                                                              |
| `description`         | string (optional) | Description of the vote as published in the roll-call vote results                                                                                                                                                                                                                                                                                                                                                                                            |
| `is_main`             | boolean           | Whether this vote is a main vote. We classify certain votes as main votes based on the text description in the voting records published by Parliament. For example, if Parliament has voted on amendments, only the vote on the text as a whole is classified as a main vote. Certain votes such as votes on the agenda are not classified as main votes. This is not an official classification by the European Parliament and there may be false negatives. |
| `is_featured`         | boolean           | Whether this vote is featured. Currently, a vote is featured when we have found an official press release about the vote published by the European Parliament Newsroom. However, this is subject to change.                                                                                                                                                                                                                                                   |
| `procedure_reference` | string (optional) | Procedure reference as listed in the Legislative Observatory                                                                                                                                                                                                                                                                                                                                                                                                  |
| `procedure_title`     | string (optional) | Title of the legislative procedure as listed in the Legislative Observatory                                                                                                                                                                                                                                                                                                                                                                                   |

### member_votes.csv

Each row represents how an MEP voted in a roll-call vote.

| Column         | Type              | Description                                                                                                                                                                                                                                   |
|----------------|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `vote_id`      | integer           | Vote ID                                                                                                                                                                                                                                       |
| `member_id`    | integer           | Member ID                                                                                                                                                                                                                                     |
| `position`     | string            | Vote position. One of `FOR`, `AGAINST`, `ABSTENTION` if the MEP participated in the vote or `DID_NOT_VOTE` if the MEP wasn’t present for the vote. We currently do not differentiate between MEPs who did not vote with or without an excuse. |
| `country_code` | string            | Country code                                                                                                                                                                                                                                  |
| `group_code`   | string (optional) | Group code. This references the political group that the MEP was part of on the day of the vote. This is not necessarily the MEP’s current political group.                                                                                   |
