# 🏰 The Scribe’s Grimoire: Porting the Citadel to the Orchard

> "In the ancient lands of the MySQL Commons, the syntax was fluid and the gates were open. But to master the **Relational Citadel** (MSSQL), one must survive the voyage across the **Docker Sea** to the **macOS Orchard**." 🧙‍♂️

## 📜 The Quest

Our hero, the **Scribe**, set out to master the high-magic of **Transact-SQL**. But a curse loomed: the Citadel was forged for the _Windows Forge_ and would not stand on the _Apple Silicon Orchard_. To conquer this, the Scribe summoned a **Docker Vessel**—a magical container to house the spirit of the SQL Server.

## 👥 The Fellowship

- **The Scribe (You):** An apprentice alchemist re-learning the ancient runes of data.
- **The Docker Oracle:** A mystical engine that manifests the Citadel on foreign soil.

- **The Mac-Kraken (M-Series Chip):** The powerful beast powering the Orchard, requiring the **Azure SQL Edge** sacrifice or the **Rosetta Stone** to understand the Citadel's tongue.
- **The High Archon (SA):** The master of the instance, guarded by a complex "SA Password" ward.

## 🛠️ The Ritual of Summoning

To manifest the Citadel, the Scribe must chant the forbidden incantation in the Terminal:

```bash
# Summoning the Vessel
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Your_Strong_Password!" \
-p 1433:1433 --name SQL_Citadel \
-d mcr.microsoft.com/azure-sql-edge

```

_(Note: The SA Password must be a strong ward—8+ characters with runes, numbers, and symbols—or the summoning will fail.)_

## 🔮 The Scrying Glass (VS Code)

To peer into the Citadel, the Scribe uses the **VS Code Scrying Glass** equipped with the **mssql extension**.

- **The Portal:** `localhost, 1433`
- **The Pact of Trust:** If the "Ghost of the Handshake" blocks your path, you must invoke the **Trust Server Certificate** ritual to pass.

## ⚔️ Runes of Transmutation (MySQL vs. MSSQL)

The dialect changes as one enters the Citadel. Behold the translation:

| Magic Action        | MySQL Commons  | MSSQL Citadel  |
| ------------------- | -------------- | -------------- |
| **Summon Top Rows** | `LIMIT 5`      | `SELECT TOP 5` |
| **Join Scrolls**    | `CONCAT(a, b)` | `a + b`        |
| **Check Time**      | `NOW()`        | `GETDATE()`    |
| **Handle Voids**    | `IFNULL()`     | `ISNULL()`     |

## 🛡️ The Jar of Persistence

Containers are but shadows; when the vessel is destroyed, the data vanishes. The Scribe uses **Docker Volumes** (The Jar of Persistence) to ensure their scrolls are never lost to the digital abyss.

---

**Current Status:** 🏗️ _Fortifying the schemas..._
**Enemies Defeated:** 👾 _Connection Refused, Weak Passwords, Handshake Phantoms._
