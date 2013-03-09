.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "mmssms.db"

.field static final DATABASE_VERSION:I = 0x54

.field private static final DEBUG:Z = false

.field private static final DELETE_NAMELOOKUP_THREADID_ON_DELETE_THREAD:Ljava/lang/String; = "DELETE FROM name_lookup WHERE thread_id = old._id; "

.field private static final HTCMSG_UPDATE_HTCTHREAD_ALL_COLUMN_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, NULL AS msg_type FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, msg_type FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, NULL AS ptime FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, ptime FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, NULL AS is_private FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_private FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, NULL AS is_urgent FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET p_message_count =    ((SELECT message_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(_id) FROM htcmsgs        WHERE htcthread_id =          (SELECT _id FROM htcthreads where recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_unread_count =    ((SELECT unread_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(*) FROM htcmsgs      WHERE read = 0 AND htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_read =  CASE (   ((CASE (SELECT read FROM threads WHERE recipient_ids = new.recipient_ids)        WHEN 0 THEN 1        ELSE 0        END) +      (SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id =         (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))))    WHEN 0 THEN 1   ELSE 0 END WHERE recipient_ids = new.recipient_ids;END;"

.field private static final HTCMSG_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

.field private static MmsDBFile:Ljava/lang/String; = null

.field private static MmsDBFolder:Ljava/lang/String; = null

.field private static MmsDBFolder2:Ljava/lang/String; = null

.field private static final PDU_UPDATE_THREAD_CONSTRAINTS:Ljava/lang/String; = "  WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 "

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

.field private static final PDU_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id    AND new.htc_category = 0;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final TAG:Ljava/lang/String; = "MmsSmsDatabaseHelper"

.field private static final THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_INSERT:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

.field private static final THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String; = "BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

.field private static final UPDATE_HTCTHREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id = new.htcthread_id)     ORDER BY date DESC LIMIT 1);  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE _id =          (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1); "

.field private static final UPDATE_HTCTHREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet =    (SELECT snippet     FROM       (SELECT date, snippet FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET snippet_cs =    (SELECT snippet_cs     FROM       (SELECT date, snippet_cs FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS snippet_cs FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET priority =    (SELECT priority     FROM       (SELECT date, priority FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, NULL AS priority FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids; DELETE FROM htcthreads WHERE latest_date IS NULL; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_message_count =    ((SELECT message_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(_id) FROM htcmsgs        WHERE htcthread_id =          (SELECT _id FROM htcthreads where recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET p_unread_count =    ((SELECT unread_count FROM threads WHERE recipient_ids= new.recipient_ids) +     (SELECT COUNT(*) FROM htcmsgs      WHERE read = 0 AND htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))) WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, NULL AS msg_type FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, msg_type FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, NULL AS ptime FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, ptime FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, NULL AS is_private FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_private FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, NULL AS is_urgent FROM threads WHERE recipient_ids = new.recipient_ids        UNION        SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id =          (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))     WHERE recipient_ids = new.recipient_ids ORDER BY date DESC LIMIT 1)   WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_HTCTHREAD_READ_ON_DELETE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_READ_ON_UPDATE_HTCMSG:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; "

.field private static final UPDATE_HTCTHREAD_READ_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_read =  CASE (   ((CASE (SELECT read FROM threads WHERE recipient_ids = new.recipient_ids)        WHEN 0 THEN 1        ELSE 0        END) +      (SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id =         (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))))    WHEN 0 THEN 1   ELSE 0 END WHERE recipient_ids = new.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_THREADID_ON_DELETE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_THREADID_ON_UPDATE_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;"

.field private static final UPDATE_HTCTHREAD_UNREAD_COUNT_ON_NEW_THREAD:Ljava/lang/String; = " UPDATE htcthreads SET p_unread_count =    (SELECT unread_count       FROM threads      WHERE recipient_ids = new.recipient_ids) +    (SELECT p_unread_count       FROM htcthreads       WHERE recipient_ids = new.recipient_ids)  WHERE recipient_ids = new.recipient_ids; "

.field private static final UPDATE_PDU_SYNCED_FLAG:Ljava/lang/String; = " UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); "

.field private static final UPDATE_SMS_SYNCED_FLAG:Ljava/lang/String; = " UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); "

.field private static final UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_PRIORITY_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_THREAD_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_UNREAD_MESSAGE_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; "

.field private static final UPDATE_UNREAD_MESSAGE_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

.field private static mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

.field private static mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

.field private static mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

.field private static mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

.field private static sFakeLowStorageTest:Z

.field private static sTriedAutoIncrement:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1028
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 1029
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 1030
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 1032
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver;

    .line 1033
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsDirObsv2:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;

    .line 1034
    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mmsFileObsv:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsFileObserver;

    .line 1035
    const-string v0, "/data/data/com.android.providers.telephony/databases/"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder:Ljava/lang/String;

    .line 1036
    const-string v0, "/data/data/com.android.providers.telephony/"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder2:Ljava/lang/String;

    .line 1037
    const-string v0, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFile:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1047
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const/16 v2, 0x54

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1049
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 1064
    return-void
.end method

.method private _DumpMmsDBInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "Tag"
    .parameter "event"
    .parameter "path"

    .prologue
    .line 7310
    if-nez p3, :cond_0

    .line 7311
    const-string p3, "Path is null "

    .line 7312
    :cond_0
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_2

    .line 7313
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7324
    :cond_1
    :goto_0
    return-void

    .line 7314
    :cond_2
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_3

    .line 7315
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  DELETE_SELF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7316
    :cond_3
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_4

    .line 7317
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVED_FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7318
    :cond_4
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_5

    .line 7319
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVED_TO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7320
    :cond_5
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_6

    .line 7321
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MOVE_SELF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7322
    :cond_6
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_1

    .line 7323
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->_DumpMmsDBInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFolder2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MmsDBFile:Ljava/lang/String;

    return-object v0
.end method

.method private copyPduDateToDate2()V
    .locals 2

    .prologue
    .line 7051
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$2;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$2;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7062
    return-void
.end method

.method private copySmsDateToDate2()V
    .locals 2

    .prologue
    .line 7023
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7034
    return-void
.end method

.method private createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2495
    const-string v0, "CREATE TABLE cbch (_id INTEGER PRIMARY KEY,title TEXT NOT NULL,channel TEXT NOT NULL,enable INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2497
    return-void
.end method

.method private createCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1530
    const-string v0, "CREATE TABLE IF NOT EXISTS cmas (_id INTEGER PRIMARY KEY, toa INTEGER DEFAULT 0, address TEXT, date INTEGER, protocol INTEGER DEFAULT 0, read INTEGER DEFAULT 0, subject TEXT, body TEXT, sc_toa INTEGER DEFAULT 0, service_center TEXT, locked INTEGER DEFAULT 0, callback_number TEXT, priority INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT 0, c_type INTEGER DEFAULT 0, exp INTEGER DEFAULT 0, received_time INTEGER DEFAULT 0, pdu TEXT, cmae_id INTEGER DEFAULT -1, category INTEGER DEFAULT -1, response INTEGER DEFAULT -1, severity INTEGER DEFAULT -1, urgency INTEGER DEFAULT -1, certainty INTEGER DEFAULT -1  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu, cmae_id, category, response, severity, urgency, certainty,  (CASE WHEN (exp > (strftime(\'%s\',\'now\') * 1000)) AND c_type = 1 THEN 1 ELSE 0 END)  AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1934
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1951
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,recipient_address TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,unread_count INTEGER DEFAULT 0,body TEXT,name TEXT,priority INTEGER DEFAULT 0,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1983
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2000
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2003
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2006
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2009
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewContactbaseNonVVM(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2010
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewContactbaseVVM(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2013
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2017
    const-string v0, "CREATE TABLE blocklist (_id INTEGER PRIMARY KEY, number TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2062
    const-string v1, "CREATE TRIGGER IF NOT EXISTS mark_mms_as_deleted   AFTER UPDATE OF msg_box ON pdu   WHEN (new.msg_box = 10 ) BEGIN   UPDATE pdu SET msg_box = -old.msg_box   WHERE _id = old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2073
    :try_start_0
    const-string v1, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2197
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2283
    :goto_2
    :try_start_3
    const-string v1, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2308
    :goto_3
    :try_start_4
    const-string v1, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2333
    :goto_4
    :try_start_5
    const-string v1, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2347
    :goto_5
    :try_start_6
    const-string v1, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2362
    :goto_6
    :try_start_7
    const-string v1, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 2383
    :goto_7
    :try_start_8
    const-string v1, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2399
    :goto_8
    :try_start_9
    const-string v1, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 2416
    :goto_9
    :try_start_a
    const-string v1, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 2449
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2454
    :try_start_b
    const-string v1, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, type, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 2464
    :goto_b
    :try_start_c
    const-string v1, "CREATE TRIGGER update_pdu_synced_flag AFTER UPDATE OF read, locked, msg_box ON pdu BEGIN  UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 2473
    :goto_c
    return-void

    .line 2080
    :catch_0
    move-exception v0

    .line 2081
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2108
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2109
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_date_subject_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2218
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2219
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger pdu_update_thread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2302
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2303
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger insert_mms_pending_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2327
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 2328
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger insert_mms_pending_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2341
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 2342
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger delete_mms_pending_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2353
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 2354
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger delete_mms_pending_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2377
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 2378
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_update_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2392
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 2393
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_delete_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2409
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 2410
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_move_mms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2428
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 2429
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_threads_error_on_update_sms fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2459
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 2460
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_sms_synced_flag fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2469
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 2470
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger update_pdu_synced_flag fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private createContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2022
    const-string v0, "CREATE TABLE IF NOT EXISTS contacts1  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2027
    const-string v0, "CREATE TABLE IF NOT EXISTS contacts2  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method private createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2590
    const-string v0, "CREATE TABLE htcmsgs (_id INTEGER PRIMARY KEY, htcthread_id INTEGER DEFAULT 0, msg_type TEXT DEFAULT \'\', vvm_id TEXT DEFAULT \'\', date INTEGER DEFAULT 0, ptime INTEGER DEFAULT 0, is_private INTEGER DEFAULT 0, is_urgent INTEGER DEFAULT 0, type INTEGER DEFAULT 0, address TEXT DEFAULT \'\', read INTEGER DEFAULT 0, htc_category INTEGER DEFAULT 0, locked INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2604
    return-void
.end method

.method private createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2506
    :try_start_0
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_insert AFTER INSERT ON   threads BEGIN UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2515
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_insert AFTER INSERT ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2524
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_update AFTER  UPDATE ON threads BEGIN UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2533
    :goto_2
    :try_start_3
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_update AFTER  UPDATE ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; END; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2541
    :goto_3
    :try_start_4
    const-string v1, "CREATE TRIGGER thread_update_htcthread_on_delete AFTER DELETE ON threads BEGIN  UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids; DELETE FROM htcthreads WHERE latest_date IS NULL; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2552
    :goto_4
    :try_start_5
    const-string v1, "CREATE TRIGGER htcmsg_update_htcthread_on_delete AFTER DELETE ON htcmsgs BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2563
    :goto_5
    return-void

    .line 2509
    :catch_0
    move-exception v0

    .line 2510
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2518
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2519
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_insert fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2527
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2528
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2536
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2537
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2547
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 2548
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_update_htcthread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2560
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 2561
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger htcmsg_update_htcthread_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private createHtcMsgsTriggersVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 6059
    const-string v18, "MmsSmsDatabaseHelper"

    const-string v19, "create triggers65>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    const-string v16, " UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids; "

    .line 6063
    .local v16, UPDATE_HTCTHREAD_THREADID_ON_UPDATE_THREAD:Ljava/lang/String;
    const-string v8, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids; "

    .line 6078
    .local v8, UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_THREAD:Ljava/lang/String;
    const-string v7, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id; "

    .line 6092
    .local v7, UPDATE_HTCTHREAD_LATEST_DATE_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v12, " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id; "

    .line 6122
    .local v12, UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v10, " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id; "

    .line 6134
    .local v10, UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_NEW_HTCMSG:Ljava/lang/String;
    const-string v14, " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id; "

    .line 6143
    .local v14, UPDATE_HTCTHREAD_READ_ON_UPDATE_HTCMSG:Ljava/lang/String;
    const-string v3, " BEGIN  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    .line 6148
    .local v3, THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_INSERT:Ljava/lang/String;
    const-string v2, " BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    .line 6155
    .local v2, HTCMSG_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v4, " BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    .line 6159
    .local v4, THREAD_UPDATE_HTCTHREAD_COLUMNS_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v15, " UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids;"

    .line 6162
    .local v15, UPDATE_HTCTHREAD_THREADID_ON_DELETE_THREAD:Ljava/lang/String;
    const-string v6, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

    .line 6174
    .local v6, UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_THREAD:Ljava/lang/String;
    const-string v5, " UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL; "

    .line 6188
    .local v5, UPDATE_HTCTHREAD_LATEST_DATE_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v11, " UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id; "

    .line 6217
    .local v11, UPDATE_HTCTHREAD_MSGTYPE_PTIME_PRIVATE_URGENT_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v9, " UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id; "

    .line 6228
    .local v9, UPDATE_HTCTHREAD_MESSAGE_COUNT_UNREAD_COUNT_ON_DELETE_HTCMSG:Ljava/lang/String;
    const-string v13, " UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id; "

    .line 6239
    .local v13, UPDATE_HTCTHREAD_READ_ON_DELETE_HTCMSG:Ljava/lang/String;
    :try_start_0
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_insert AFTER INSERT ON  threads  BEGIN  UPDATE htcthreads SET thread_id = new._id WHERE recipient_ids = new.recipient_ids;  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6249
    :goto_0
    :try_start_1
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_insert AFTER INSERT ON  htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6259
    :goto_1
    :try_start_2
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_update AFTER UPDATE ON threads  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE recipient_ids = new.recipient_ids      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = new.recipient_ids))   WHERE recipient_ids = new.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = new.recipient_ids;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6269
    :goto_2
    :try_start_3
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_update AFTER UPDATE ON htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = new.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = new.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = new.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = new.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = new.htcthread_id) WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = new.htcthread_id)  WHERE _id = new.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = new.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = new.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6278
    :goto_3
    :try_start_4
    const-string v18, "CREATE TRIGGER thread_update_htcthread_on_delete  AFTER DELETE ON threads  BEGIN  UPDATE htcthreads SET thread_id = 0 WHERE recipient_ids = old.recipient_ids; UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM htcmsgs     WHERE htcthread_id =        (SELECT _id FROM htcthreads WHERE recipient_ids = old.recipient_ids))   WHERE recipient_ids = old.recipient_ids    ORDER BY date DESC LIMIT 1)  WHERE recipient_ids = old.recipient_ids;  DELETE FROM htcthreads WHERE latest_date IS NULL;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 6290
    :goto_4
    :try_start_5
    const-string v18, "CREATE TRIGGER htcmsg_update_htcthread_on_delete  AFTER DELETE ON htcmsgs  BEGIN  UPDATE htcthreads SET latest_date = (   SELECT date    FROM (     SELECT date      FROM threads WHERE _id =        (SELECT thread_id FROM htcthreads WHERE _id = old.htcthread_id)      UNION      SELECT date      FROM htcmsgs     WHERE htcthread_id = old.htcthread_id)   ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  DELETE FROM htcthreads WHERE latest_date IS NULL;  UPDATE htcthreads SET msg_type =    (SELECT msg_type     FROM       (SELECT date, msg_type FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET vvm_ptime =    (SELECT ptime     FROM       (SELECT date, ptime FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_private =    (SELECT is_private     FROM       (SELECT date, is_private FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)   WHERE _id = old.htcthread_id;  UPDATE htcthreads SET is_urgent =    (SELECT is_urgent     FROM       (SELECT date, is_urgent FROM htcmsgs WHERE htcthread_id = old.htcthread_id)    ORDER BY date DESC LIMIT 1)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_message_count = (   SELECT COUNT(_id) FROM htcmsgs    WHERE htcthread_id = old.htcthread_id) WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_unread_count = (   SELECT COUNT(*) FROM htcmsgs    WHERE read = 0 AND htcthread_id = old.htcthread_id)  WHERE _id = old.htcthread_id;  UPDATE htcthreads SET p_read =  CASE (       SELECT COUNT(*) FROM htcmsgs WHERE read = 0 AND htcthread_id = old.htcthread_id)    WHEN 0 THEN 1   ELSE 0 END WHERE _id = old.htcthread_id;  END; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 6302
    :goto_5
    return-void

    .line 6243
    :catch_0
    move-exception v17

    .line 6244
    .local v17, ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_insert fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6253
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 6254
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_insert fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6263
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    .line 6264
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_update fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6273
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 6274
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_update fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6285
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v17

    .line 6286
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger thread_update_htcthread_on_delete fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6299
    .end local v17           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 6300
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v18, "MmsSmsDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "create trigger htcmsg_update_htcthread_on_delete fail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2569
    .local v0, sqlCreate:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "htcthreads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "latest_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_message_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recipient_ids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recipient_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p_unread_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vvm_ptime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_urgent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2585
    return-void
.end method

.method private createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4747
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority, locked, is_evdo  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority, locked, is_evdo FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority, locked, 0 AS is_evdo FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4762
    return-void
.end method

.method private createIncomingMessageViewContactbaseNonVVM(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4805
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4809
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4831
    return-void
.end method

.method private createIncomingMessageViewContactbaseVVM(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4836
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4840
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4873
    return-void
.end method

.method private createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4767
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4771
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,  is_urgent, vvm_type, is_evdo FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id,         sms.thread_id AS thread_id, address, body,        date AS normalized_date, NULL AS sub, NULL as sub_cs, read,        NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime,         NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo       FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = sms.thread_id      WHERE sms.type = 1      UNION      SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,        (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,        NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,        pri AS priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,        NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo       FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = pdu.thread_id      WHERE m_type = 130 OR m_type = 132      UNION      SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id,         address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read,         NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime,         htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo      FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)      ON htcthreads_id = htcmsgs.htcthread_id      ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4800
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1668
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1669
    return-void
.end method

.method private createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2036
    const-string v0, "CREATE TABLE IF NOT EXISTS name_lookup  (thread_id INTEGER DEFAULT 0,  normalized_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2039
    return-void
.end method

.method private createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2044
    :try_start_0
    const-string v1, "CREATE TRIGGER thread_delete_name_lookup_on_delete AFTER DELETE ON threads BEGIN DELETE FROM name_lookup WHERE thread_id = old._id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    :goto_0
    return-void

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger thread_delete_name_lookup_on_delete fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1683
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, seen INTEGER DEFAULT 0, extra INTEGER DEFAULT 0, phone_type INTEGER DEFAULT 0, date2 INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1728
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1736
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,ExtraUri TEXT,vCALs INTEGER,vCALe INTEGER,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1755
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1758
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1761
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1772
    :try_start_0
    const-string v1, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1795
    :goto_1
    :try_start_2
    const-string v1, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1819
    :goto_2
    return-void

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger part_cleanup fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1788
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1789
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger addr_cleanup fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1805
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1806
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create trigger cleanup_delivery_and_read_report fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2480
    const-string v2, "CREATE TABLE qtext (_id INTEGER PRIMARY KEY,content TEXT NOT NULL, locale TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2483
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2484
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2488
    .local v0, locale:Ljava/lang/String;
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1835
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1840
    .local v0, isCdmaFormat:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim TEXT,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_evdo INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "c_type INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exp INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gid INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date2 INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    const-string v1, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,pdu TEXT,phone_type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1907
    const-string v1, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    const-string v1, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1920
    return-void

    .line 1835
    .end local v0           #isCdmaFormat:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1823
    const-string v0, "cosmos"

    const-string v1, "set sms triggers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_sms_as_deleted   AFTER UPDATE OF type ON sms   WHEN (new.type = 10 ) BEGIN   UPDATE sms SET type = -old.type   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method private createSmsTriggersVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 5730
    const-string v10, "MmsSmsDatabaseHelper"

    const-string v11, "createSmsTriggersVersion64>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    const-string v2, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

    .line 5746
    .local v2, UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String;
    const-string v1, "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

    .line 5765
    .local v1, SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String;
    const-string v7, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; "

    .line 5783
    .local v7, UPDATE_UNREAD_MESSAGE_COUNT_ON_NEW:Ljava/lang/String;
    const-string v5, "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

    .line 5812
    .local v5, UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_UPDATE:Ljava/lang/String;
    const-string v0, "BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    .line 5825
    .local v0, SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_BY_DATE_ON_UPDATE:Ljava/lang/String;
    const-string v3, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

    .line 5840
    .local v3, UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String;
    const-string v8, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

    .line 5858
    .local v8, UPDATE_UNREAD_MESSAGE_COUNT_ON_OLD:Ljava/lang/String;
    const-string v4, "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

    .line 5887
    .local v4, UPDATE_THREAD_DATE_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String;
    const-string v6, "  UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

    .line 5900
    .local v6, UPDATE_THREAD_PRIORITY_ON_DELETE:Ljava/lang/String;
    :try_start_0
    const-string v10, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5908
    :goto_0
    :try_start_1
    const-string v10, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5918
    :goto_1
    :try_start_2
    const-string v10, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read, htc_category   ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5932
    :goto_2
    :try_start_3
    const-string v10, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 5945
    :goto_3
    :try_start_4
    const-string v10, "CREATE TRIGGER delete_obsolete_threads_sms AFTER DELETE ON sms BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 5962
    :goto_4
    :try_start_5
    const-string v10, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 5980
    :goto_5
    :try_start_6
    const-string v10, "CREATE TRIGGER update_threads_error_on_delete_sms   AFTER DELETE ON sms  WHEN (OLD.type = 5) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 5993
    :goto_6
    :try_start_7
    const-string v10, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, type, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\'  WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 6002
    :goto_7
    return-void

    .line 5902
    :catch_0
    move-exception v9

    .line 5903
    .local v9, ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_on_insert fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5912
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 5913
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_date_subject_on_update fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5925
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 5926
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_read_on_update fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5940
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 5941
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger sms_update_thread_on_delete fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5955
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 5956
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger delete_obsolete_threads_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5974
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 5975
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_threads_error_on_update_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5987
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 5988
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_threads_error_on_delete_sms fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5999
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 6000
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v10, "MmsSmsDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create trigger update_sms_synced_flag fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1673
    :try_start_0
    const-string v1, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2610
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type,         T.c_type AS c_type,         T.exp AS exp  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type,                    c_type,                    exp             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type,                          0 as c_type,                          0 as exp                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0 AND (m_type = 128 OR m_type = 130 OR m_type = 132)                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type,                          c_type,                          exp                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2674
    return-void
.end method

.method private createThreadsListView67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 6628
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6629
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0 AND (m_type = 128 OR m_type = 130 OR m_type = 132)                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6685
    return-void
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1641
    :try_start_0
    const-string v1, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1648
    const-string v1, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1651
    const-string v1, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    const-string v1, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    const-string v1, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1661
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :goto_0
    return-void

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;IZZ)I
    .locals 15
    .parameter "db"
    .parameter "message_id"
    .parameter "bgDelete"
    .parameter "trashDelete"

    .prologue
    .line 1451
    const/4 v13, -0x1

    .line 1452
    .local v13, thread_id:I
    const/4 v11, 0x0

    .line 1454
    .local v11, hasMessage:Z
    const-string v2, "sms"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1456
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1457
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1458
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1459
    const/4 v11, 0x1

    .line 1461
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_1
    if-nez v11, :cond_3

    .line 1466
    const/4 v12, 0x0

    .line 1501
    :cond_2
    :goto_0
    return v12

    .line 1472
    :cond_3
    const/4 v12, 0x0

    .line 1474
    .local v12, rows:I
    const/4 v1, 0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 1475
    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1476
    .local v14, values:Landroid/content/ContentValues;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 1478
    const-string v1, "type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1484
    :goto_1
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1485
    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v14, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1497
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_2
    if-lez v13, :cond_2

    .line 1499
    int-to-long v1, v13

    invoke-static {p0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 1482
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_5
    const-string v1, "thread_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1490
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_0
    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_2

    .line 1491
    :catch_0
    move-exception v10

    .line 1492
    .local v10, e:Landroid/database/sqlite/SQLiteAbortException;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V

    goto :goto_2
.end method

.method private static deleteOrphanedAddress(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 1090
    const/4 v10, 0x0

    .line 1092
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "threads"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "recipient_ids"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1093
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1094
    const/4 v8, 0x0

    .line 1099
    .local v8, _ids:Ljava/lang/StringBuilder;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1100
    .local v12, recipients:Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1101
    .local v9, addresses:[Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1102
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, v9

    if-ge v11, v0, :cond_3

    .line 1103
    if-nez v8, :cond_1

    .line 1104
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #_ids:Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .restart local v8       #_ids:Ljava/lang/StringBuilder;
    aget-object v0, v9, v11

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1116
    .end local v8           #_ids:Ljava/lang/StringBuilder;
    .end local v9           #addresses:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #recipients:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1110
    .restart local v8       #_ids:Ljava/lang/StringBuilder;
    .restart local v9       #addresses:[Ljava/lang/String;
    .restart local v12       #recipients:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    if-eqz v8, :cond_4

    .line 1112
    const-string v0, "canonical_addresses"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v8           #_ids:Ljava/lang/StringBuilder;
    .end local v9           #addresses:[Ljava/lang/String;
    .end local v12           #recipients:Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1120
    :cond_5
    return-void
.end method

.method public static deleteSimSmsOnDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 11
    .parameter "db"
    .parameter "selection"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1429
    const/4 v9, -0x1

    .line 1431
    .local v9, thread_id:I
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1433
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1434
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1437
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_1
    const-string v0, "sms"

    invoke-virtual {p0, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1443
    if-lez v9, :cond_2

    .line 1445
    int-to-long v0, v9

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1447
    :cond_2
    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3599
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3600
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3601
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3602
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3603
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3605
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3606
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3607
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3608
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3609
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3610
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3611
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3612
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3613
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3614
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3615
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3616
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3617
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3618
    return-void
.end method

.method private dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3690
    const-string v0, "DROP TABLE IF EXISTS cbch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3691
    return-void
.end method

.method private dropCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3734
    const-string v0, "DROP TABLE IF EXISTS cmas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3735
    const-string v0, "DROP VIEW IF EXISTS cmas_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3736
    return-void
.end method

.method private dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3621
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3622
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3623
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3625
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3627
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3629
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3630
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3631
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3635
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3637
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3638
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3641
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCmasTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3643
    const-string v0, "DROP TABLE IF EXISTS blocklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3644
    return-void
.end method

.method private dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3647
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3648
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3649
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3650
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3651
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3652
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3653
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3654
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3655
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3656
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3657
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3658
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3659
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3660
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3661
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3662
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3663
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3664
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3665
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3666
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3668
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3671
    const-string v0, "DROP TRIGGER IF EXISTS update_sms_synced_flag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3672
    const-string v0, "DROP TRIGGER IF EXISTS update_pdu_synced_flag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3674
    return-void
.end method

.method private dropContactsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3727
    const-string v0, "DROP TABLE IF EXISTS contacts1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3728
    const-string v0, "DROP TABLE IF EXISTS contacts2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3729
    return-void
.end method

.method private dropHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3713
    const-string v0, "DROP TABLE IF EXISTS htcmsgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3714
    return-void
.end method

.method private dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3717
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3718
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3719
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3720
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3721
    const-string v0, "DROP TRIGGER IF EXISTS thread_update_htcthread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3722
    const-string v0, "DROP TRIGGER IF EXISTS htcmsg_update_htcthread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3723
    return-void
.end method

.method private dropHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3709
    const-string v0, "DROP TABLE IF EXISTS htcthreads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3710
    return-void
.end method

.method private dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3695
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3696
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3697
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3698
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3699
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3700
    return-void
.end method

.method private dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3703
    const-string v0, "DROP TRIGGER IF EXISTS part_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3704
    const-string v0, "DROP TRIGGER IF EXISTS addr_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3705
    const-string v0, "DROP TRIGGER IF EXISTS cleanup_delivery_and_read_report;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3706
    return-void
.end method

.method private dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3686
    const-string v0, "DROP TABLE IF EXISTS qtext"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3687
    return-void
.end method

.method private dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3677
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3678
    const-string v0, "DROP TABLE IF EXISTS newSmsIndicator"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3679
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3680
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3681
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3682
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3683
    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 1082
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 1071
    const-class v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 1074
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 7194
    const/4 v2, 0x0

    .line 7195
    .local v2, result:Z
    const-string v1, "SELECT sql FROM sqlite_master WHERE type=\'table\' AND name=\'threads\'"

    .line 7196
    .local v1, query:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 7197
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 7199
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7200
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7201
    .local v3, schema:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "AUTOINCREMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 7202
    :goto_0
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MmsSmsDb] hasAutoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7205
    .end local v3           #schema:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 7208
    :cond_1
    return v2

    .restart local v3       #schema:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 7201
    goto :goto_0

    .line 7205
    .end local v3           #schema:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .parameter "db"

    .prologue
    .line 1571
    const-string v9, "words"

    .line 1573
    .local v9, TABLE_WORDS:Ljava/lang/String;
    const-string v2, "sms"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "body"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1582
    .local v15, smsRows:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 1583
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v15, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1584
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1585
    .local v11, cv:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1588
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1589
    .local v12, id:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1591
    .local v10, body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1592
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1594
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1595
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1599
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_0

    .line 1600
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1599
    :cond_1
    if-eqz v15, :cond_2

    .line 1600
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_2
    const-string v2, "part"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v3, v1

    const-string v4, "ct = \'text/plain\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1615
    .local v14, mmsRows:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 1616
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v14, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1617
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1618
    .restart local v11       #cv:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1619
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1621
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1622
    .restart local v12       #id:J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1624
    .restart local v10       #body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1625
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1627
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1628
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1632
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_1
    move-exception v1

    if-eqz v14, :cond_3

    .line 1633
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1632
    :cond_4
    if-eqz v14, :cond_5

    .line 1633
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1637
    :cond_5
    return-void
.end method

.method public static refreshThreadsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12
    .parameter "db"
    .parameter "threadIds"

    .prologue
    const/4 v11, 0x0

    .line 1372
    const-string v8, "MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshThreadsTable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    if-nez p1, :cond_0

    .line 1375
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "threadIds can\'t be null"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1377
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1378
    .local v5, selectSQL:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT thread_id as _id, date, SUM(msg_count) AS message_count, recipient_ids, recipient_address, snippet, snippet_cs, MIN(read) AS read, SUM(unread_count) AS unread_count, body, name, priority, type, error, has_attachment, transport_type, msg_box, locked, htc_category, err_type, c_type, exp FROM(   SELECT * FROM   (        SELECT msg_count, t._id AS thread_id, p.date * 1000 AS date , p.read, t.recipient_address, t.recipient_ids, p.unread_count, t.body, p.snippet, p.snippet_cs, t.error, t.priority,t.type, \'mms\' AS transport_type, p.msg_box, p.locked, t.name, pm.err_type, t.has_attachment, p.htc_category, 0 as c_type, 0 as exp FROM        (            SELECT count(1) AS msg_count, count(1)-SUM(read) AS unread_count, thread_id,_id, date , MIN(read) AS read, sub AS snippet, sub_cs AS snippet_cs, msg_box, locked, htc_category            FROM pdu WHERE msg_box > 0 AND msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130) AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY thread_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ) p JOIN threads t ON p.thread_id = t._id left JOIN pending_msgs pm ON p._id = pm.msg_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        UNION ALL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        SELECT msg_count, t._id AS thread_id, s.date, s.read, t.recipient_address, t.recipient_ids, s.unread_count, t.body, s.snippet, 0 AS snippet_cs, t.error, t.priority,t.type, \'sms\' AS transport_type, s.msg_box, s.locked, t.name, s.err_type, t.has_attachment, s.htc_category, s.c_type, s.exp FROM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "            SELECT count(1) AS msg_count, count(1)-SUM(CASE WHEN type != 1 THEN 1 ELSE read END) AS unread_count, thread_id, date, MIN(CASE WHEN type != 1 THEN 1 ELSE read END) AS read, body AS snippet, 0 AS snippet_cs, type AS msg_box, locked, error_code As err_type, htc_category, c_type, exp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "            FROM (SELECT * FROM sms ORDER BY date) where type != 3 AND type > 0 AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GROUP BY thread_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "        ) s JOIN threads t ON s.thread_id = t._id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   ) ORDER BY date"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") GROUP BY _id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, coreSQL:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _id,message_count,read,unread_count,snippet,snippet_cs,date FROM ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ) WHERE htc_category = 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, finalSQL:Ljava/lang/String;
    invoke-virtual {p0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1404
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 1405
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1406
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1408
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1409
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "message_count"

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v8, "read"

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const-string v8, "unread_count"

    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string v8, "snippet"

    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v8, "snippet_cs"

    const/4 v9, 0x5

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    const-string v8, "date"

    const/4 v9, 0x6

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1418
    .local v7, where:Ljava/lang/String;
    const-string v8, "threads"

    invoke-virtual {p0, v8, v6, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1419
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1408
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1422
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #where:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1425
    :cond_2
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "threadIds"

    .prologue
    const/4 v4, 0x0

    .line 1344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1346
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1348
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1352
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1356
    :cond_1
    const-string v2, "threads"

    const-string v3, "_id NOT IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0) "

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1365
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v5, 0x0

    .line 1293
    if-nez p1, :cond_0

    .line 1294
    const-string p1, ""

    .line 1298
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, query:Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1301
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1303
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1304
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1307
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1296
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1307
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1317
    :cond_2
    const-string v3, "threads"

    const-string v4, "_id NOT IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0) "

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1325
    const-string v3, "htcthreads"

    const-string v4, "_id NOT IN (SELECT DISTINCT htcthread_id FROM htcmsgs WHERE htcthread_id > 0) AND thread_id NOT IN ( SELECT DISTINCT thread_id FROM sms WHERE thread_id > 0 UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id > 0)"

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1336
    :try_start_1
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOrphanedAddress(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1340
    :goto_2
    return-void

    .line 1337
    :catch_0
    move-exception v1

    .line 1338
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter "db"
    .parameter "thread_id"

    .prologue
    .line 1124
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_1

    .line 1125
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    const-string v7, "MmsSmsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateThread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v7, "threads"

    const-string v8, "_id = ? AND _id NOT IN          (SELECT thread_id FROM sms            WHERE thread_id NOT NULL            UNION SELECT thread_id FROM pdu            WHERE thread_id NOT NULL)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1143
    .local v5, rows:I
    if-lez v5, :cond_2

    .line 1146
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOrphanedAddress(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_1
    const-string v7, "htcthreads"

    const-string v8, "_id NOT IN (SELECT DISTINCT htcthread_id FROM htcmsgs WHERE htcthread_id > 0) AND thread_id = ? AND thread_id NOT IN ( SELECT DISTINCT thread_id FROM sms WHERE thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v2

    .line 1148
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1164
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        AND sms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != 3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        AND htc_category = 0) + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      ON threads._id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "thread_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "      WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "thread_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msg_box"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != 3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        AND htc_category = 0) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  WHERE threads._id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu WHERE htc_category = 0         UNION SELECT date, thread_id FROM sms WHERE htc_category = 0)     WHERE thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  snippet ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    (SELECT snippet FROM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "           WHERE (m_type=132 OR m_type=130 OR m_type=128) AND htc_category = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "         UNION SELECT date, body AS snippet, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     WHERE thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  snippet_cs ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    (SELECT snippet_cs FROM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "           WHERE (m_type=132 OR m_type=130 OR m_type=128) AND htc_category = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     WHERE thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  priority ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    (SELECT prioritys FROM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "        (SELECT date * 1000 AS date, pri AS prioritys, thread_id FROM pdu WHERE htc_category = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "         UNION SELECT date,CASE WHEN priority = 0 THEN priority+129 ELSE priority+128 END AS prioritys, thread_id FROM sms WHERE htc_category = 0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     WHERE thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ORDER BY date DESC LIMIT 1)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  WHERE threads._id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    (SELECT COUNT(*)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "          FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pdu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "          WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "m_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x82

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "m_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x84

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msg_box"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            AND htc_category = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "thread_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  WHERE threads._id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIMIT 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, query:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1265
    .local v6, setError:I
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1266
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1268
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1274
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, errorQuery:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_0

    .line 1278
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1279
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1280
    .local v1, curError:I
    if-eq v1, v6, :cond_4

    .line 1282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE threads SET error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1287
    .end local v1           #curError:I
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1270
    .end local v3           #errorQuery:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1287
    .restart local v3       #errorQuery:Ljava/lang/String;
    :catchall_1
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method private upgradeDatabaseToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3740
    const-string v0, "ALTER TABLE threads ADD COLUMN type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3742
    return-void
.end method

.method private upgradeDatabaseToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3745
    const-string v0, "ALTER TABLE threads ADD COLUMN error INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3751
    const-string v0, "UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3762
    const-string v0, "CREATE TRIGGER update_threads_error_on_update   AFTER UPDATE OF err_type ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3777
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete   AFTER DELETE ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu.thread_id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms.thread_id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3791
    return-void
.end method

.method private upgradeDatabaseToVersion27(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3794
    const-string v0, "UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3805
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3806
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3808
    const-string v0, "CREATE TRIGGER update_threads_error_on_update   AFTER UPDATE OF err_type ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3823
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete   AFTER DELETE ON pending_msgs BEGIN UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM pdu LEFT JOIN pending_msgs     ON pdu._id = pending_msgs.msg_id     WHERE proto_type = 1 AND err_type >= 10     GROUP BY thread_id); UPDATE threads SET error = 1 WHERE _id IN  (SELECT thread_id FROM sms LEFT JOIN pending_msgs     ON sms._id = pending_msgs.msg_id     WHERE proto_type = 0 AND err_type >= 10     GROUP BY thread_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3837
    return-void
.end method

.method private upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3840
    const-string v0, "ALTER TABLE threads ADD COLUMN snippet_cs INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3843
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3844
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3845
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3846
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3848
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3866
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3885
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read ON pdu   WHEN new.msg_box!=5 AND new.msg_box!=3    AND (new.m_type=132 OR new.m_type=130 OR new.m_type=128) BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3899
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000),      snippet = (SELECT body FROM SMS ORDER BY date DESC LIMIT 1)  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3907
    return-void
.end method

.method private upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3910
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3911
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3912
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3914
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3931
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3949
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3961
    return-void
.end method

.method private upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3969
    const-string v0, "CREATE TABLE temp_threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,subject TEXT,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3979
    const-string v0, "INSERT INTO temp_threads SELECT * FROM threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3980
    const-string v0, "DROP TABLE IF EXISTS threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3981
    const-string v0, "ALTER TABLE temp_threads RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3982
    return-void
.end method

.method private upgradeDatabaseToVersion31(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3985
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3989
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4012
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4033
    return-void
.end method

.method private upgradeDatabaseToVersion32(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4036
    const-string v0, "CREATE TABLE IF NOT EXISTS rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4037
    return-void
.end method

.method private upgradeDatabaseToVersion33(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4040
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4041
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4043
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4059
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4069
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4082
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_sms   AFTER DELETE ON sms  WHEN (OLD.type = 5) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4089
    return-void
.end method

.method private upgradeDatabaseToVersion34(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4092
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4093
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4095
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4113
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, msg_box  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4132
    return-void
.end method

.method private upgradeDatabaseToVersion35(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4135
    const-string v0, "CREATE TABLE temp_threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4145
    const-string v0, "INSERT INTO temp_threads SELECT _id, date, 0 AS message_count, recipient_ids,       snippet, snippet_cs, read, type, error FROM threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4149
    const-string v0, "DROP TABLE IF EXISTS threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4150
    const-string v0, "ALTER TABLE temp_threads RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4152
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4153
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4154
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4155
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4156
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4157
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4159
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4187
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4216
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4249
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet = (SELECT snippet FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET    snippet_cs = (SELECT snippet_cs FROM      (SELECT date * 1000 AS date, sub AS snippet,         sub_cs AS snippet_cs FROM pdu       UNION SELECT date, body AS snippet, NULL AS snippet_cs         FROM sms) ORDER BY date DESC LIMIT 1)   WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4282
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4313
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4341
    return-void
.end method

.method private upgradeDatabaseToVersion36(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4344
    const-string v0, "CREATE TABLE IF NOT EXISTS drm (_id INTEGER PRIMARY KEY, _data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4345
    const-string v0, "CREATE TRIGGER IF NOT EXISTS drm_file_cleanup DELETE ON drm BEGIN SELECT _DELETE_FILE(old._data); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4347
    return-void
.end method

.method private upgradeDatabaseToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4350
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4351
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4353
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)   WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4384
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4415
    const-string v0, "CREATE TABLE temp_part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4429
    const-string v0, "INSERT INTO temp_part SELECT * FROM part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4430
    const-string v0, "UPDATE temp_part SET seq=\'0\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4431
    const-string v0, "UPDATE temp_part SET seq=\'-1\' WHERE ct=\'application/smil\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4432
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4433
    const-string v0, "ALTER TABLE temp_part RENAME TO part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4434
    return-void
.end method

.method private upgradeDatabaseToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4437
    const-string v0, "DROP TRIGGER IF EXISTS part_file_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4438
    const-string v0, "DROP TRIGGER IF EXISTS drm_file_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4439
    return-void
.end method

.method private upgradeDatabaseToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4442
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4443
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4444
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4445
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4447
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4483
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4521
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4556
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is NULL) +      (SELECT COUNT(DISTINCT pdu.m_id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3         AND pdu.m_id is not NULL)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4591
    return-void
.end method

.method private upgradeDatabaseToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4594
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4595
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4596
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4597
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4599
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4628
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body,    snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4659
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4687
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box ON pdu   WHEN new.m_type=132 OR new.m_type=130 OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0 AND thread_id = threads._id)      WHEN 0 THEN 1 ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4715
    return-void
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4718
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4719
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4729
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4732
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4733
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4734
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4735
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 4739
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4740
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4878
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4880
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4912
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 4918
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN callback_number TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4921
    const-string v1, "ALTER TABLE sms ADD COLUMN priority INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4929
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE sms ADD COLUMN index_on_sim INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4935
    :goto_1
    return-void

    .line 4923
    :catch_0
    move-exception v0

    .line 4924
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4931
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 4932
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 5015
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5023
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5024
    const-string v1, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5027
    const-string v1, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5029
    const-string v1, "ALTER TABLE part ADD COLUMN text TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5034
    const-string v1, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5035
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageView(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 5044
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE part ADD COLUMN seq INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 5051
    :goto_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeTextFile2TextColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 5055
    :goto_3
    return-void

    .line 5016
    :catch_0
    move-exception v0

    .line 5017
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgradeDatabaseToVersion46 in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5038
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 5039
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5040
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5045
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 5046
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "upgrade seq in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5052
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 5053
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "TextColumn in upgradeDatabaseToVersion47() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5060
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5061
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5062
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5063
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5064
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5065
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5068
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5074
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5078
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.sub,     snippet_cs = new.sub_cs,  priority = new.pri  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5085
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id            AND htc_category = 0) +         (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND htc_category = 0            AND (m_type=132              OR m_type=130)            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128          AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5090
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5100
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3        AND htc_category = 0) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND htc_category = 0        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = old.thread_id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0            AND thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, body AS snippet, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu        WHERE m_type=132 OR m_type=130 OR m_type=128     AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms     WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET priority =    (SELECT priority FROM     (SELECT date * 1000 AS date, pri AS priority, thread_id FROM pdu        WHERE (m_type=132 OR m_type=130 OR m_type=128)          AND htc_category=0      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms        WHERE htc_category=0)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5108
    return-void
.end method

.method private upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5113
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5114
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcThreadsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5115
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->isSupportHtcMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5116
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5117
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIncomingMessageViewV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5119
    :cond_0
    return-void
.end method

.method private upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 5125
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN htc_category INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5126
    const-string v1, "ALTER TABLE sms ADD COLUMN htc_category INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5127
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5128
    const-string v1, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5131
    const-string v1, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category  FROM threads  LEFT JOIN (SELECT norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category                   FROM pdu                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5185
    const-string v1, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5203
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5204
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5206
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5207
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5212
    :goto_0
    return-void

    .line 5209
    :catch_0
    move-exception v0

    .line 5210
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception upgrade database version 50: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5218
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_timestamp LONG DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5221
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5225
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_timestamp LONG DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5228
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5234
    :goto_0
    return-void

    .line 5231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 5238
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN cs_synced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5241
    const-string v0, "ALTER TABLE pdu ADD COLUMN cs_synced INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5245
    const-string v0, "CREATE TRIGGER update_sms_synced_flag AFTER UPDATE OF read, locked, status ON sms BEGIN  UPDATE sms SET cs_synced = \'0\' WHERE sms._id = old._id AND (sms.type = 1 or sms.type = 2); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5251
    const-string v0, "CREATE TRIGGER update_pdu_synced_flag AFTER UPDATE OF read, locked ON pdu BEGIN  UPDATE pdu SET cs_synced = \'0\' WHERE pdu._id = old._id AND (pdu.msg_box = 1 or pdu.msg_box = 2); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5261
    :goto_0
    return-void

    .line 5258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5265
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "upgrade to version 53 > (sync secure folder function)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5269
    return-void
.end method

.method private upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5273
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 54> (sync connected service codes about sms in version 51)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    const-string v0, "CREATE TABLE temp_sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim INTEGER DEFAULT -1,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5321
    const-string v0, "INSERT INTO temp_sms SELECT _id, thread_id, toa, address, person, date, protocol, read, status, type, reply_path_present, subject, body, sc_toa, report_date, service_center, locked, index_on_sim, callback_number, priority, htc_category, -1 AS cs_timestamp, \'\' AS cs_id, 0 AS cs_synced FROM sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5327
    const-string v0, "DROP TABLE IF EXISTS sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5328
    const-string v0, "ALTER TABLE temp_sms RENAME TO sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5329
    return-void
.end method

.method private upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5332
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 55> (sync connected service codes about pdu in version 51)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    const-string v0, "CREATE TABLE temp_pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5382
    const-string v0, "INSERT INTO temp_pdu SELECT _id, thread_id, date, msg_box, read, m_id, sub, sub_cs, ct_t, ct_l, exp, m_cls, m_type, v, m_size, pri, rr, rpt_a, resp_st, st, tr_id, retr_st, retr_txt, retr_txt_cs, read_status, ct_cls, resp_txt, d_tm, d_rpt, locked, htc_category, -1 AS cs_timestamp, \'\' AS cs_id, 0 AS cs_synced FROM pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5388
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5389
    const-string v0, "ALTER TABLE temp_pdu RENAME TO pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5390
    return-void
.end method

.method private upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5393
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 56> re-create all triggers"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5399
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5400
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5401
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5402
    return-void
.end method

.method private upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 5406
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "update to version 60> upgrade to Froyo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    const-string v3, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5413
    const-string v3, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category  FROM threads  LEFT JOIN (SELECT norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category                   FROM pdu                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5471
    const-string v3, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5473
    const-string v3, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,    sub, sub_cs, read, m_type, priority  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,            body, date AS normalized_date, NULL as sub, NULL as sub_cs,            read, NULL AS m_type, priority FROM sms          WHERE (type = 1 AND htc_category = 0)        UNION        SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id,             (SELECT address from addr              WHERE addr.msg_id = pdu._id) as address,            NULL AS body, date * 1000 AS normalized_date,            sub, sub_cs, read, m_type, pri AS priority FROM pdu          WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5489
    const-string v3, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5491
    const-string v3, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, htcthread_id, vvm_id, ptime,  is_private,  is_urgent, vvm_type FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id,         sms.thread_id AS thread_id, address, body,        date AS normalized_date, NULL AS sub, NULL as sub_cs, read,        NULL AS m_type, priority, htcthread_id, NULL AS vvm_id, NULL AS ptime,         NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type       FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = sms.thread_id      WHERE sms.type = 1      UNION      SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,        (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,        NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,        pri AS priority, htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,        NULL AS is_urgent, NULL AS vvm_type       FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)        ON threads_id = pdu.thread_id      WHERE m_type = 130 OR m_type = 132      UNION      SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id,         address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read,         NULL AS m_type, NULL AS priority, htcthread_id, vvm_id, ptime,         htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type      FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)      ON htcthreads_id = htcmsgs.htcthread_id      ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5521
    invoke-static {}, Lcom/android/providers/telephony/AllMessagesProvider;->isSupportHtcMessages()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5524
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5525
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5534
    :cond_0
    :try_start_0
    const-string v3, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5541
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5542
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5550
    :try_start_1
    const-string v3, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5551
    const-string v3, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5559
    :goto_1
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5560
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5561
    const-string v3, "sms"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5562
    .local v1, count:I
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion60: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in sms table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    const-string v3, "pdu"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5565
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion60: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in pdu table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5571
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #count:I
    :goto_2
    const-string v3, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5574
    const-string v3, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read, htc_category   ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET unread_count =     (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND type = 1            AND htc_category = 0             AND thread_id = threads._id) +     (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND (m_type = 130            OR m_type = 132)             AND msg_box = 1            AND htc_category = 0             AND thread_id = threads._id)  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5591
    return-void

    .line 5535
    :catch_0
    move-exception v2

    .line 5536
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception altering table sms add column error_code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5552
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 5553
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception altering table sms, pdu add column seen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5567
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 5568
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "[MmsSmsDb] upgradeDatabaseToVersion60 caught "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5596
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 61> add locked for widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5600
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,\t sub, sub_cs, read, m_type, priority, locked  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,\t\t\t body, date AS normalized_date, NULL as sub, NULL as sub_cs,\t\t\t read, NULL AS m_type, priority, locked FROM sms\t\t   WHERE (type = 1 AND htc_category = 0)\t\t UNION\t\t SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id, \t\t\t (SELECT address from addr \t\t\t  WHERE addr.msg_id = pdu._id) as address,\t\t\t NULL AS body, date * 1000 AS normalized_date,\t\t\t sub, sub_cs, read, m_type, pri AS priority,locked FROM pdu\t\t   WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5616
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5620
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,\tis_urgent, vvm_type FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\t sms.thread_id AS thread_id, address, body,\t\t date AS normalized_date, NULL AS sub, NULL as sub_cs, read,\t\t NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\t NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type \t   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = sms.thread_id\t   WHERE sms.type = 1\t   UNION\t   SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,\t\t (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,\t\t NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,\t\t pri AS priority, locked , htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,\t\t NULL AS is_urgent, NULL AS vvm_type \t   FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = pdu.thread_id\t   WHERE m_type = 130 OR m_type = 132\t   UNION\t   SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id, \t\t address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\t NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime, \t\t htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type\t   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)\t   ON htcthreads_id = htcmsgs.htcthread_id\t   ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5649
    return-void
.end method

.method private upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5652
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 62> add colume err_type for threads_list View"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    const-string v0, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5659
    const-string v0, "CREATE VIEW IF NOT EXISTS threads_list AS   SELECT _id,         T.norm_date AS date,         T.message_count AS message_count,         recipient_ids,         recipient_address,         T.snippet AS snippet,         T.snippet_cs AS snippet_cs,         CASE T.htc_category WHEN 0 THEN read ELSE 1 END AS read,         unread_count,         body,         name,         priority,         type,         error,         has_attachment,         T.transport_type AS transport_type,         T.msg_box AS msg_box,         T.locked AS locked,         T.htc_category AS htc_category,         T.err_type AS err_type  FROM threads  LEFT JOIN (SELECT COUNT(*) AS message_count, norm_date,                    snippet,                    snippet_cs,                    thread_id,                    transport_type,                    msg_box,                    locked,                    htc_category,                    err_type             FROM (SELECT date * 1000 AS norm_date,                          sub AS snippet,                          sub_cs AS snippet_cs,                          thread_id,                          \'mms\' AS transport_type,                          msg_box,                          locked,                          htc_category,                          err_type                   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id                   WHERE msg_box > 0                   UNION                   SELECT date AS norm_date,                          body AS snippet,                          0 AS snippet_cs,                          thread_id,                          \'sms\' AS transport_type,                          type AS msg_box,                          locked,                          htc_category,                          error_code AS err_type                   FROM sms                   WHERE type > 0)             GROUP BY thread_id, htc_category) T  ON threads._id = T.thread_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5715
    return-void
.end method

.method private upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 5718
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 5722
    .local v0, isCdmaFormat:I
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE sms ADD COLUMN is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5727
    :goto_1
    return-void

    .line 5718
    .end local v0           #isCdmaFormat:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5724
    .restart local v0       #isCdmaFormat:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 6005
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "update to version 64>"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6011
    :try_start_0
    invoke-static {}, Lcom/android/providers/telephony/util/TelephUtils;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 6014
    .local v1, isCdmaFormat:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE temp_sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,toa INTEGER DEFAULT 0,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,sc_toa INTEGER DEFAULT 0,report_date INTEGER,service_center TEXT,locked INTEGER DEFAULT 0,index_on_sim TEXT,callback_number TEXT,priority INTEGER DEFAULT 0,htc_category INTEGER DEFAULT 0,cs_timestamp LONG DEFAULT -1, cs_id TEXT, cs_synced INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6044
    const-string v2, "INSERT INTO temp_sms SELECT * FROM sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6045
    const-string v2, "DROP TABLE IF EXISTS sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6046
    const-string v2, "ALTER TABLE temp_sms RENAME TO sms;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6050
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTriggersVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6055
    .end local v1           #isCdmaFormat:I
    :goto_1
    return-void

    .line 6011
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6052
    :catch_0
    move-exception v0

    .line 6053
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alter sms column fail(version 64): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 35
    .parameter "db"

    .prologue
    .line 6307
    const-string v31, "MmsSmsDatabaseHelper"

    const-string v32, "update to version 65>"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6309
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6313
    const-string v17, "SELECT _id, recipient_ids, recipient_address, date FROM threads"

    .line 6314
    .local v17, rawQuery:Ljava/lang/String;
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6316
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 6319
    .local v27, time:J
    const/16 v20, 0x0

    .line 6320
    .local v20, sqlstatement:Landroid/database/sqlite/SQLiteStatement;
    const/16 v19, 0x0

    .line 6321
    .local v19, sqlInsertstatement:Landroid/database/sqlite/SQLiteStatement;
    const-string v5, "Update htcthreads SET thread_id=?, recipient_ids=?, recipient_address=? WHERE (recipient_ids=?)"

    .line 6325
    .local v5, UpdateSQLCommand:Ljava/lang/String;
    const-string v4, "insert into htcthreads (thread_id, recipient_ids, recipient_address, latest_date) values (?,?,?,?)"

    .line 6330
    .local v4, InsertSQLCommand:Ljava/lang/String;
    const/16 v18, 0x0

    .line 6331
    .local v18, size:I
    const/4 v12, 0x0

    .line 6332
    .local v12, iCount:I
    const/16 v24, 0x0

    .line 6333
    .local v24, tempThreadID:[Ljava/lang/Long;
    const/16 v21, 0x0

    .line 6334
    .local v21, tempDate1:[Ljava/lang/Long;
    const/16 v23, 0x0

    .line 6335
    .local v23, tempRecipientID:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 6338
    .local v22, tempRecipientAddress:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 6339
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 6340
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v24, v0

    .line 6341
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 6342
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 6343
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 6345
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 6346
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 6347
    .local v25, thread_id:J
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 6348
    .local v16, rIds:Ljava/lang/String;
    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6349
    .local v15, rAddress:Ljava/lang/String;
    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 6363
    .local v7, date:J
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v20

    .line 6364
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6365
    const/16 v31, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6366
    const/16 v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6367
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v13

    .line 6368
    .local v13, id:J
    const-wide/16 v31, 0x0

    cmp-long v31, v13, v31

    if-gez v31, :cond_0

    .line 6371
    const/16 v31, 0x3

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v21, v12

    .line 6372
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v24, v12

    .line 6373
    aput-object v16, v23, v12

    .line 6374
    aput-object v15, v22, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6376
    add-int/lit8 v12, v12, 0x1

    .line 6386
    :cond_0
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6408
    .end local v7           #date:J
    .end local v13           #id:J
    .end local v15           #rAddress:Ljava/lang/String;
    .end local v16           #rIds:Ljava/lang/String;
    .end local v25           #thread_id:J
    :catchall_0
    move-exception v31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v31

    .line 6379
    .restart local v7       #date:J
    .restart local v15       #rAddress:Ljava/lang/String;
    .restart local v16       #rIds:Ljava/lang/String;
    .restart local v25       #thread_id:J
    :catch_0
    move-exception v9

    .line 6381
    .local v9, e:Landroid/database/SQLException;
    :try_start_3
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "can not update htcthreads table from threads. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6386
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v31

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6408
    .end local v7           #date:J
    .end local v15           #rAddress:Ljava/lang/String;
    .end local v16           #rIds:Ljava/lang/String;
    .end local v25           #thread_id:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6416
    :cond_2
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 6417
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_3

    .line 6419
    const/16 v31, 0x1

    aget-object v32, v24, v11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6420
    const/16 v31, 0x2

    aget-object v32, v23, v11

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6421
    const/16 v31, 0x3

    aget-object v32, v22, v11

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6422
    const/16 v31, 0x4

    aget-object v32, v21, v11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v19

    move/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6423
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 6417
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6434
    :cond_3
    const/16 v24, 0x0

    .line 6435
    const/16 v23, 0x0

    .line 6436
    const/16 v22, 0x0

    .line 6437
    const/16 v21, 0x0

    .line 6438
    if-eqz v19, :cond_4

    .line 6440
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 6443
    .end local v11           #i:I
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 6444
    .local v29, time1:J
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Update And Insert htcthreads Time: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v29, v27

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggersVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6449
    const-string v31, "DROP TABLE IF EXISTS contacts1"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6450
    const-string v31, "DROP TABLE IF EXISTS contacts2"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6452
    const-string v31, "CREATE TABLE IF NOT EXISTS contacts1  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6457
    const-string v31, "CREATE TABLE IF NOT EXISTS contacts2  (thread_id INTEGER,  htcthread_id INTEGER DEFAULT 0,  contact_id INTEGER DEFAULT 0);"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6464
    :try_start_6
    const-string v31, "ALTER TABLE htcmsgs ADD COLUMN htc_category INTEGER DEFAULT 0;"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6465
    const-string v31, "ALTER TABLE htcmsgs ADD COLUMN locked INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 6554
    :goto_3
    return-void

    .line 6427
    .end local v29           #time1:J
    :catch_1
    move-exception v9

    .line 6429
    .restart local v9       #e:Landroid/database/SQLException;
    :try_start_7
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "can not Insert htcthreads table from threads. "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6434
    const/16 v24, 0x0

    .line 6435
    const/16 v23, 0x0

    .line 6436
    const/16 v22, 0x0

    .line 6437
    const/16 v21, 0x0

    .line 6438
    if-eqz v19, :cond_4

    .line 6440
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_2

    .line 6434
    .end local v9           #e:Landroid/database/SQLException;
    :catchall_2
    move-exception v31

    const/16 v24, 0x0

    .line 6435
    const/16 v23, 0x0

    .line 6436
    const/16 v22, 0x0

    .line 6437
    const/16 v21, 0x0

    .line 6438
    if-eqz v19, :cond_5

    .line 6440
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v31

    .line 6466
    .restart local v29       #time1:J
    :catch_2
    move-exception v10

    .line 6467
    .local v10, ex:Ljava/lang/Exception;
    const-string v31, "MmsSmsDatabaseHelper"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "got exception altering table htcmsgs add column htc_category, locked: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6559
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 66>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6562
    :try_start_0
    const-string v0, "ALTER TABLE sms ADD COLUMN is_evdo INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6569
    :goto_0
    const-string v0, "DROP VIEW IF EXISTS incoming_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6571
    const-string v0, "CREATE VIEW incoming_msg AS SELECT transport_type, _id, thread_id, address, body, normalized_date,\t sub, sub_cs, read, m_type, priority, locked, is_evdo  FROM (SELECT DISTINCT \'sms\' AS transport_type, _id, thread_id, address,\t\t\t body, date AS normalized_date, NULL as sub, NULL as sub_cs,\t\t\t read, NULL AS m_type, priority, locked, is_evdo FROM sms\t\t   WHERE (type = 1 AND htc_category = 0)\t\t UNION\t\t SELECT DISTINCT \'mms\' AS transport_type, _id, thread_id, \t\t\t (SELECT address from addr \t\t\t  WHERE addr.msg_id = pdu._id) as address,\t\t\t NULL AS body, date * 1000 AS normalized_date,\t\t\t sub, sub_cs, read, m_type, pri AS priority,locked, 0 AS is_evdo FROM pdu\t\t   WHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0)  ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6587
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_v2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6591
    const-string v0, "CREATE VIEW incoming_msg_v2 AS SELECT transport_type, _id, thread_id, address, body, normalized_date,  sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime,  is_private,\tis_urgent, vvm_type, is_evdo FROM (SELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\t sms.thread_id AS thread_id, address, body,\t\t date AS normalized_date, NULL AS sub, NULL as sub_cs, read,\t\t NULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\t NULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo \t   FROM sms LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = sms.thread_id\t   WHERE sms.type = 1\t   UNION\t   SELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, pdu.thread_id AS thread_id,\t\t (SELECT address from addr WHERE addr.msg_id = pdu._id) as address,\t\t NULL AS body, date * 1000 AS normalized_date, sub, sub_cs, read, m_type,\t\t pri AS priority, locked , htcthread_id, NULL AS vvm_id, NULL AS ptime, NULL AS is_private,\t\t NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo\t   FROM pdu LEFT JOIN (SELECT _id AS htcthread_id, thread_id AS threads_id FROM htcthreads)\t\t ON threads_id = pdu.thread_id\t   WHERE m_type = 130 OR m_type = 132\t   UNION\t   SELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, thread_id, \t\t address, NULL AS body, date AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\t NULL AS m_type, NULL AS priority, NULL AS locked, htcthread_id, vvm_id, ptime, \t\t htcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo\t   FROM htcmsgs LEFT JOIN (SELECT _id AS htcthreads_id, thread_id FROM htcthreads)\t   ON htcthreads_id = htcmsgs.htcthread_id\t   ORDER BY normalized_date ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6621
    return-void

    .line 6564
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6690
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 67>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6692
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6695
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6699
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE addr.msg_id = pdu._id) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6722
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6726
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE addr.msg_id = pdu._id) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6760
    return-void
.end method

.method private upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6764
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 68>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6765
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_sms_as_deleted   AFTER UPDATE OF type ON sms   WHEN (new.type = 10 ) BEGIN   UPDATE sms SET type = -old.type   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6772
    const-string v0, "CREATE TRIGGER IF NOT EXISTS mark_mms_as_deleted   AFTER UPDATE OF msg_box ON pdu   WHEN (new.msg_box = 10 ) BEGIN   UPDATE pdu SET msg_box = -old.msg_box   WHERE _id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6779
    return-void
.end method

.method private upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 6784
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 69 and add (c_type,exp) in threads_list>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN c_type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6789
    const-string v1, "ALTER TABLE sms ADD COLUMN exp INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6797
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6798
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6801
    :goto_0
    return-void

    .line 6791
    :catch_0
    move-exception v0

    .line 6792
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception altering table sms add column c_type, exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6797
    const-string v1, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6798
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 6797
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const-string v2, "DROP VIEW IF EXISTS threads_list"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6798
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsListView(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method private upgradeDatabaseToVersion70(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6807
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 70>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6810
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6811
    const-string v1, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6812
    const-string v1, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6813
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6817
    :goto_0
    return-void

    .line 6814
    :catch_0
    move-exception v0

    .line 6815
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6822
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 71> create cmas table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    const-string v0, "CREATE TABLE IF NOT EXISTS cmas (_id INTEGER PRIMARY KEY, toa INTEGER DEFAULT 0, address TEXT, date INTEGER, protocol INTEGER DEFAULT 0, read INTEGER DEFAULT 0, subject TEXT, body TEXT, sc_toa INTEGER DEFAULT 0, service_center TEXT, locked INTEGER DEFAULT 0, callback_number TEXT, priority INTEGER DEFAULT 0, is_cdma_format INTEGER DEFAULT 0, c_type INTEGER DEFAULT 0, exp INTEGER DEFAULT 0, received_time INTEGER DEFAULT 0, pdu TEXT  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6845
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu,  (CASE WHEN exp > strftime(\'%s\',\'now\') * 1000 THEN 1 ELSE 0 END) AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6851
    return-void
.end method

.method private upgradeDatabaseToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6857
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 72>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6860
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6861
    const-string v1, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6865
    :goto_0
    return-void

    .line 6862
    :catch_0
    move-exception v0

    .line 6863
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion73(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6871
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 73>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS blocklist"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6875
    const-string v1, "CREATE TABLE blocklist (_id INTEGER PRIMARY KEY, number TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6879
    :goto_0
    return-void

    .line 6876
    :catch_0
    move-exception v0

    .line 6877
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion74(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6884
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 74>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6886
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_non_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6890
    const-string v0, "CREATE VIEW incoming_msg_contactbase_non_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, is_evdo, contact_id, content_type FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE (sms.type = 1 AND htc_category = 0) UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , 0 AS is_evdo, contact_id, ct_t AS content_type \t\t\tFROM pdu LEFT JOIN (SELECT thread_id AS thread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE ((m_type = 130 OR m_type = 132) AND htc_category = 0 AND msg_box > 0) ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6913
    const-string v0, "DROP VIEW IF EXISTS incoming_msg_contactbase_vvm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6917
    const-string v0, "CREATE VIEW incoming_msg_contactbase_vvm AS SELECT transport_type, _id, thread_id, address, body, normalized_date, sub, sub_cs, read, m_type, priority, locked, htcthread_id, vvm_id, ptime, is_private, is_urgent, vvm_type, is_evdo, contact_id, content_type  FROM ( \tSELECT DISTINCT \'sms\' AS transport_type, sms._id AS _id, \t\tsms.thread_id AS thread_id, address, body, \t\tdate AS normalized_date, NULL AS sub, NULL as sub_cs, read, \t\tNULL AS m_type, priority, locked, htcthread_id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, is_evdo, contact_id, NULL as content_type \t\t\tFROM sms LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = sms.thread_id \tWHERE sms.type = 1 UNION \tSELECT DISTINCT \'mms\' AS transport_type, pdu._id AS _id, \t\tpdu.thread_id AS thread_id, (SELECT address from addr WHERE (addr.msg_id = pdu._id AND addr.type = 137)) as address, NULL AS body, \t\tdate * 1000 AS normalized_date, sub, sub_cs, read, \t\tm_type,pri AS priority, locked , _id, NULL AS vvm_id, NULL AS ptime, \t\tNULL AS is_private, NULL AS is_urgent, NULL AS vvm_type, 0 AS is_evdo, contact_id, ct_t as content_type \t\t\tFROM pdu LEFT JOIN (SELECT htcthread_id, contact_id, thread_id AS thread_id_from_contact FROM contacts1) \t\t\t\tON thread_id_from_contact = pdu.thread_id \tWHERE m_type = 130 OR m_type = 132 UNION \tSELECT DISTINCT htcmsgs.msg_type AS transport_type, htcmsgs._id AS _id, \t\thtcmsgs._id, address, NULL AS body, \t\tdate AS normalized_date, NULL AS sub, NULL AS sub_cs, read, \t\tNULL AS m_type, NULL AS priority, NULL AS locked , htcthread_id, vvm_id, ptime, \t\thtcmsgs.is_private AS is_private, htcmsgs.is_urgent AS is_urgent, type AS vvm_type, 0 AS is_evdo, contact_id, NULL as content_type \t\t\tFROM htcmsgs LEFT JOIN (SELECT htcthread_id AS htcthread_id_from_contact, contact_id FROM contacts1) \t\t\t\tON htcthread_id_from_contact = htcmsgs.htcthread_id ) ORDER BY normalized_date ASC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6951
    return-void
.end method

.method private upgradeDatabaseToVersion75(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 6955
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 75>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    const-string v0, " ALTER TABLE cmas  ADD COLUMN cmae_id INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6958
    const-string v0, " ALTER TABLE cmas  ADD COLUMN category INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6960
    const-string v0, " ALTER TABLE cmas  ADD COLUMN response INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6962
    const-string v0, " ALTER TABLE cmas  ADD COLUMN severity INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6964
    const-string v0, " ALTER TABLE cmas  ADD COLUMN urgency INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6966
    const-string v0, " ALTER TABLE cmas  ADD COLUMN certainty INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6969
    const-string v0, "DROP VIEW IF EXISTS cmas_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6970
    const-string v0, "CREATE VIEW IF NOT EXISTS cmas_view AS  SELECT _id, toa, address, date, protocol, read, subject, body, sc_toa,  service_center, locked, callback_number, priority, is_cdma_format, c_type,  exp, received_time, pdu, cmae_id, category, response, severity, urgency, certainty,  (CASE WHEN (exp > (strftime(\'%s\',\'now\') * 1000)) AND c_type = 1 THEN 1 ELSE 0 END)  AS presidential  FROM cmas "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6977
    return-void
.end method

.method private upgradeDatabaseToVersion76(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6983
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 76>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6986
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN gid INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6987
    const-string v1, "ALTER TABLE sms ADD COLUMN extra INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6988
    const-string v1, "ALTER TABLE pdu ADD COLUMN extra INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6992
    :goto_0
    return-void

    .line 6989
    :catch_0
    move-exception v0

    .line 6990
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion77(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 6998
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 77>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN phone_type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7002
    const-string v1, "ALTER TABLE raw ADD COLUMN phone_type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7006
    :goto_0
    return-void

    .line 7003
    :catch_0
    move-exception v0

    .line 7004
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion78(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 7012
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 78>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7015
    :try_start_0
    const-string v1, "ALTER TABLE sms ADD COLUMN date2 INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7019
    :goto_0
    return-void

    .line 7016
    :catch_0
    move-exception v0

    .line 7017
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion79(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 7040
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 79>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    :try_start_0
    const-string v1, "ALTER TABLE pdu ADD COLUMN date2 INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7047
    :goto_0
    return-void

    .line 7044
    :catch_0
    move-exception v0

    .line 7045
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion80(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7068
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 80>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7070
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7071
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7072
    return-void
.end method

.method private upgradeDatabaseToVersion81(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 7077
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "update to version 81>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7080
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7084
    :goto_0
    return-void

    .line 7081
    :catch_0
    move-exception v0

    .line 7082
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion82(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7089
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 82"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7092
    const-string v0, "ALTER TABLE sms ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7094
    const-string v0, "ALTER TABLE pdu ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7097
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7098
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7099
    return-void
.end method

.method private upgradeDatabaseToVersion83(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7105
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 83"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7109
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7110
    return-void
.end method

.method private upgradeDatabaseToVersion84(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7118
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "update to version 84"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7122
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7123
    return-void
.end method

.method private upgradeTextFile2TextColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 4940
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn >>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    const-string v3, "part"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "ct"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const-string v5, " (ct = ? OR ct = ?)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "text/plain"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "application/smil"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4944
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 4945
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn  cursor is null <<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    :goto_0
    return-void

    .line 4949
    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4950
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4951
    .local v15, path:Ljava/lang/String;
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4953
    const/4 v13, 0x0

    .line 4955
    .local v13, fIn:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 4956
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .local v14, fIn:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v16

    .line 4957
    .local v16, size:I
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    if-gtz v16, :cond_2

    .line 4959
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file size is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    if-nez v16, :cond_1

    .line 4962
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4963
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4964
    const-string v2, "part"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 4988
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v14, :cond_0

    .line 4989
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4990
    :catch_0
    move-exception v12

    .line 4991
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4969
    .end local v12           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    move/from16 v0, v16

    new-array v10, v0, [B

    .line 4970
    .local v10, content:[B
    invoke-virtual {v14, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 4971
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v10, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4976
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4977
    const-string v2, "part"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 4988
    if-eqz v14, :cond_0

    .line 4989
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 4990
    :catch_1
    move-exception v12

    .line 4991
    .restart local v12       #e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4980
    .end local v10           #content:[B
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #fIn:Ljava/io/FileInputStream;
    .end local v16           #size:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    :catch_2
    move-exception v12

    .line 4981
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput FileNotFoundException e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4988
    if-eqz v13, :cond_0

    .line 4989
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 4990
    :catch_3
    move-exception v12

    .line 4991
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4982
    .end local v12           #e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 4983
    .restart local v12       #e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput IOException e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4988
    if-eqz v13, :cond_0

    .line 4989
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 4990
    :catch_5
    move-exception v12

    .line 4991
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4984
    .end local v12           #e:Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 4985
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    :try_start_9
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openFileInput other Exception e >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4988
    if-eqz v13, :cond_0

    .line 4989
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_1

    .line 4990
    :catch_7
    move-exception v12

    .line 4991
    .local v12, e:Ljava/io/IOException;
    const-string v2, "Jerry"

    const-string v3, "close fin file fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4987
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 4988
    :goto_5
    if-eqz v13, :cond_3

    .line 4989
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 4992
    :cond_3
    :goto_6
    throw v2

    .line 4990
    :catch_8
    move-exception v12

    .line 4991
    .restart local v12       #e:Ljava/io/IOException;
    const-string v3, "Jerry"

    const-string v4, "close fin file fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5005
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .end local v15           #path:Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5007
    const-string v2, "Jerry"

    const-string v3, "upgradeTextFile2TextColumn <<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4987
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    .restart local v15       #path:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_5

    .line 4984
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_9
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_4

    .line 4982
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_a
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto :goto_3

    .line 4980
    .end local v13           #fIn:Ljava/io/FileInputStream;
    .restart local v14       #fIn:Ljava/io/FileInputStream;
    :catch_b
    move-exception v12

    move-object v13, v14

    .end local v14           #fIn:Ljava/io/FileInputStream;
    .restart local v13       #fIn:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 7216
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7217
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    :goto_0
    return-void

    .line 7220
    :cond_0
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7225
    const-string v0, "CREATE TABLE threads_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,recipient_address TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,unread_count INTEGER DEFAULT 0,body TEXT,name TEXT,priority INTEGER DEFAULT 0,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7242
    const-string v0, "INSERT INTO threads_temp SELECT * from threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7243
    const-string v0, "DROP TABLE threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7244
    const-string v0, "ALTER TABLE threads_temp RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7246
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] start create HtcMsgsTriggers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7247
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createHtcMsgsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7249
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 7128
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7130
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    if-nez v4, :cond_1

    .line 7131
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 7132
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    .line 7133
    .local v2, hasAutoIncrement:Z
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getWritableDatabase] hasAutoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7134
    if-nez v2, :cond_1

    .line 7135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7142
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 7145
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-eqz v4, :cond_0

    .line 7147
    const-string v4, "MmsSmsDatabaseHelper"

    const-string v5, "Unregistering mLowStorageMonitor - we\'ve upgraded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7148
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7149
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 7169
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7190
    .end local v2           #hasAutoIncrement:Z
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 7151
    .restart local v2       #hasAutoIncrement:Z
    :catch_0
    move-exception v1

    .line 7152
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add autoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7154
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    if-eqz v4, :cond_2

    .line 7155
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 7160
    :cond_2
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-nez v4, :cond_3

    .line 7161
    const-string v4, "MmsSmsDatabaseHelper"

    const-string v5, "[getWritableDatabase] turning on storage monitor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7162
    new-instance v4, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-direct {v4, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    iput-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    .line 7163
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 7164
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7165
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7166
    iget-object v4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7169
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 7128
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v2           #hasAutoIncrement:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 7169
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #hasAutoIncrement:Z
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1507
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1508
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1510
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createLookupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1516
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1524
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1525
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1526
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 2679
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    packed-switch p2, :pswitch_data_0

    .line 3580
    :goto_0
    :pswitch_0
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "Destroying all old data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropQTextTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3582
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3583
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3584
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3585
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3586
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3587
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3591
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3592
    :cond_0
    :goto_1
    return-void

    .line 2684
    :pswitch_1
    const/16 v3, 0x18

    if-le p3, v3, :cond_0

    .line 2688
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2690
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2691
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2700
    :pswitch_2
    const/16 v3, 0x19

    if-le p3, v3, :cond_0

    .line 2704
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2706
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2707
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2712
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2716
    :pswitch_3
    const/16 v3, 0x1a

    if-le p3, v3, :cond_0

    .line 2720
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2722
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion27(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2728
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2732
    :pswitch_4
    const/16 v3, 0x1b

    if-le p3, v3, :cond_0

    .line 2736
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2738
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2739
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2744
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2748
    :pswitch_5
    const/16 v3, 0x1c

    if-le p3, v3, :cond_0

    .line 2753
    const-string v3, "SELECT * FROM threads"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2754
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2756
    :try_start_4
    const-string v3, "snippet_cs"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2777
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2779
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2780
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 2785
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2789
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_6
    const/16 v3, 0x1d

    if-le p3, v3, :cond_0

    .line 2793
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2795
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2796
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 2801
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2805
    :pswitch_7
    const/16 v3, 0x1e

    if-le p3, v3, :cond_0

    .line 2809
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2811
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion31(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2812
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 2817
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2821
    :pswitch_8
    const/16 v3, 0x1f

    if-le p3, v3, :cond_0

    .line 2825
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2827
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2828
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    .line 2833
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2837
    :pswitch_9
    const/16 v3, 0x20

    if-le p3, v3, :cond_0

    .line 2841
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2843
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion33(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2844
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 2849
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2853
    :pswitch_a
    const/16 v3, 0x21

    if-le p3, v3, :cond_0

    .line 2857
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2859
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion34(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2860
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b

    .line 2865
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2869
    :pswitch_b
    const/16 v3, 0x22

    if-le p3, v3, :cond_0

    .line 2873
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2875
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2876
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c

    .line 2881
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2885
    :pswitch_c
    const/16 v3, 0x23

    if-le p3, v3, :cond_0

    .line 2889
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2891
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion36(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2892
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    .line 2897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2901
    :pswitch_d
    const/16 v3, 0x24

    if-le p3, v3, :cond_0

    .line 2905
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2907
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2908
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    .line 2913
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2917
    :pswitch_e
    const/16 v3, 0x25

    if-le p3, v3, :cond_0

    .line 2921
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2923
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2924
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f

    .line 2929
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2933
    :pswitch_f
    const/16 v3, 0x26

    if-le p3, v3, :cond_0

    .line 2937
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2939
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2940
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10

    .line 2945
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2949
    :pswitch_10
    const/16 v3, 0x27

    if-le p3, v3, :cond_0

    .line 2953
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2955
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2956
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11

    .line 2961
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2965
    :pswitch_11
    const/16 v3, 0x28

    if-le p3, v3, :cond_0

    .line 2969
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2971
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2972
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    .line 2977
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2981
    :pswitch_12
    const/16 v3, 0x29

    if-le p3, v3, :cond_0

    .line 2984
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2986
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2987
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    .line 2992
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2996
    :pswitch_13
    const/16 v3, 0x2a

    if-lt p3, v3, :cond_0

    .line 3000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3002
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3003
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14

    .line 3008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3012
    :pswitch_14
    const/16 v3, 0x2b

    if-le p3, v3, :cond_0

    .line 3015
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3017
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3018
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_15

    .line 3023
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 2692
    :catch_0
    move-exception v2

    .line 2693
    .local v2, ex:Ljava/lang/Throwable;
    :try_start_15
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2696
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2708
    :catch_1
    move-exception v2

    .line 2709
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_16
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 2712
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2724
    :catch_2
    move-exception v2

    .line 2725
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_17
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2728
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2740
    :catch_3
    move-exception v2

    .line 2741
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_18
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 2744
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2757
    .restart local v0       #c:Landroid/database/Cursor;
    :catch_4
    move-exception v1

    .line 2761
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_19
    const-string v3, "MmsSmsDatabaseHelper"

    const-string v4, "Upgrade database file from TC2!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 2764
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2765
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5

    .line 2770
    :try_start_1b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 2773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2766
    :catch_5
    move-exception v2

    .line 2767
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_1c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 2770
    :try_start_1d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 2773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2770
    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v3

    :try_start_1e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 2773
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catchall_5
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2781
    :catch_6
    move-exception v2

    .line 2782
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_1f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 2785
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_6
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2797
    .end local v0           #c:Landroid/database/Cursor;
    :catch_7
    move-exception v2

    .line 2798
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_20
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 2801
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_7
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2813
    :catch_8
    move-exception v2

    .line 2814
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_21
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 2817
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_8
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2829
    :catch_9
    move-exception v2

    .line 2830
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_22
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 2833
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_9
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2845
    :catch_a
    move-exception v2

    .line 2846
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_23
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 2849
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2861
    :catch_b
    move-exception v2

    .line 2862
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_24
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 2865
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2877
    :catch_c
    move-exception v2

    .line 2878
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_25
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 2881
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2893
    :catch_d
    move-exception v2

    .line 2894
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_26
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 2897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2909
    :catch_e
    move-exception v2

    .line 2910
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 2913
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2925
    :catch_f
    move-exception v2

    .line 2926
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_28
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 2929
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2941
    :catch_10
    move-exception v2

    .line 2942
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_29
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 2945
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_10
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2957
    :catch_11
    move-exception v2

    .line 2958
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 2961
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_11
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2973
    :catch_12
    move-exception v2

    .line 2974
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 2977
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_12
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2988
    :catch_13
    move-exception v2

    .line 2989
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    .line 2992
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_13
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3004
    :catch_14
    move-exception v2

    .line 3005
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 3008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_14
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3019
    :catch_15
    move-exception v2

    .line 3020
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_2e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    .line 3023
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_15
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3030
    :pswitch_15
    const/16 v3, 0x2d

    if-le p3, v3, :cond_0

    .line 3033
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3035
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3036
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 3041
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3046
    :pswitch_16
    const/16 v3, 0x2e

    if-le p3, v3, :cond_0

    .line 3049
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3051
    :try_start_30
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3052
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 3057
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3061
    :pswitch_17
    const/16 v3, 0x2f

    if-le p3, v3, :cond_0

    .line 3064
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3066
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3067
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 3072
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3076
    :pswitch_18
    const/16 v3, 0x30

    if-le p3, v3, :cond_0

    .line 3079
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3081
    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3082
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 3087
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3091
    :pswitch_19
    const/16 v3, 0x31

    if-le p3, v3, :cond_0

    .line 3094
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3096
    :try_start_33
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3097
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 3102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3106
    :pswitch_1a
    const/16 v3, 0x32

    if-le p3, v3, :cond_0

    .line 3109
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3111
    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3112
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 3117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3121
    :pswitch_1b
    const/16 v3, 0x33

    if-le p3, v3, :cond_0

    .line 3124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3126
    :try_start_35
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 3132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3136
    :pswitch_1c
    const/16 v3, 0x34

    if-le p3, v3, :cond_0

    .line 3139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3141
    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 3147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3151
    :pswitch_1d
    const/16 v3, 0x35

    if-le p3, v3, :cond_0

    .line 3154
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3156
    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3157
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 3162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3166
    :pswitch_1e
    const/16 v3, 0x36

    if-gt p3, v3, :cond_2

    .line 3170
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3172
    :try_start_38
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3173
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 3178
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3182
    :pswitch_1f
    const/16 v3, 0x37

    if-gt p3, v3, :cond_3

    .line 3186
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3188
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3189
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_20
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 3194
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3202
    :pswitch_20
    const/16 v3, 0x3b

    if-le p3, v3, :cond_0

    .line 3205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3207
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3208
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 3213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3217
    :pswitch_21
    const/16 v3, 0x3c

    if-le p3, v3, :cond_0

    .line 3220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3222
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_22
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 3228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3231
    :pswitch_22
    const/16 v3, 0x3d

    if-le p3, v3, :cond_0

    .line 3234
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3236
    :try_start_3c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3237
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_23
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .line 3242
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3245
    :pswitch_23
    const/16 v3, 0x3e

    if-le p3, v3, :cond_0

    .line 3248
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3250
    :try_start_3d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3251
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 3256
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3259
    :pswitch_24
    const/16 v3, 0x3f

    if-le p3, v3, :cond_0

    .line 3262
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3264
    :try_start_3e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 3270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3275
    :pswitch_25
    const/16 v3, 0x40

    if-le p3, v3, :cond_0

    .line 3278
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3280
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3281
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_26
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 3286
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3292
    :pswitch_26
    const/16 v3, 0x41

    if-le p3, v3, :cond_0

    .line 3295
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3297
    :try_start_40
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3298
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_27
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 3303
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3309
    :pswitch_27
    const/16 v3, 0x42

    if-le p3, v3, :cond_0

    .line 3312
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3314
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3315
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_28
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 3320
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3324
    :pswitch_28
    const/16 v3, 0x43

    if-le p3, v3, :cond_0

    .line 3327
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3329
    :try_start_42
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3330
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_29
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .line 3335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3339
    :pswitch_29
    const/16 v3, 0x44

    if-le p3, v3, :cond_0

    .line 3342
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3344
    :try_start_43
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3345
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 3350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3353
    :pswitch_2a
    const/16 v3, 0x45

    if-le p3, v3, :cond_0

    .line 3356
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3358
    :try_start_44
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3359
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 3364
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3369
    :pswitch_2b
    const/16 v3, 0x46

    if-le p3, v3, :cond_0

    .line 3372
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3374
    :try_start_45
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3375
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 3380
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3384
    :pswitch_2c
    const/16 v3, 0x47

    if-le p3, v3, :cond_0

    .line 3387
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3389
    :try_start_46
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3390
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2d
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 3395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3398
    :pswitch_2d
    const/16 v3, 0x48

    if-le p3, v3, :cond_0

    .line 3401
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3403
    :try_start_47
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion73(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3404
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_2e
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2e

    .line 3409
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3413
    :pswitch_2e
    const/16 v3, 0x49

    if-le p3, v3, :cond_0

    .line 3416
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3418
    :try_start_48
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion74(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3419
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2f

    .line 3424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3428
    :pswitch_2f
    const/16 v3, 0x4a

    if-le p3, v3, :cond_0

    .line 3431
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3433
    :try_start_49
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion75(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3434
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_30
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_30

    .line 3439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3443
    :pswitch_30
    const/16 v3, 0x4b

    if-le p3, v3, :cond_0

    .line 3446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3448
    :try_start_4a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion76(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3449
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_31
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_31

    .line 3454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3457
    :pswitch_31
    const/16 v3, 0x4c

    if-le p3, v3, :cond_0

    .line 3460
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3462
    :try_start_4b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion77(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3463
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_32
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_32

    .line 3468
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3471
    :pswitch_32
    const/16 v3, 0x4d

    if-le p3, v3, :cond_0

    .line 3474
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3476
    :try_start_4c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion78(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_33
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_33

    .line 3482
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3486
    :pswitch_33
    const/16 v3, 0x4e

    if-le p3, v3, :cond_0

    .line 3489
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3491
    :try_start_4d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion79(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3492
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_34

    .line 3497
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3501
    :pswitch_34
    const/16 v3, 0x4f

    if-le p3, v3, :cond_0

    .line 3504
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3506
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion80(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3507
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_35

    .line 3512
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3516
    :pswitch_35
    const/16 v3, 0x50

    if-le p3, v3, :cond_0

    .line 3519
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3521
    :try_start_4f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion81(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3522
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_36
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_36

    .line 3527
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3531
    :pswitch_36
    const/16 v3, 0x51

    if-le p3, v3, :cond_0

    .line 3534
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3536
    :try_start_50
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion82(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3537
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_37
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_37

    .line 3542
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3547
    :pswitch_37
    const/16 v3, 0x52

    if-le p3, v3, :cond_0

    .line 3550
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3552
    :try_start_51
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion83(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3553
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_38
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_38

    .line 3558
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3563
    :pswitch_38
    const/16 v3, 0x53

    if-le p3, v3, :cond_0

    .line 3566
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3568
    :try_start_52
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion84(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3569
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_39
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_39

    .line 3574
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 3037
    :catch_16
    move-exception v2

    .line 3038
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_53
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_16

    .line 3041
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_16
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3053
    :catch_17
    move-exception v2

    .line 3054
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_54
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_17

    .line 3057
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_17
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3068
    :catch_18
    move-exception v2

    .line 3069
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_55
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_18

    .line 3072
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_18
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3083
    :catch_19
    move-exception v2

    .line 3084
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_56
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_19

    .line 3087
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_19
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3098
    :catch_1a
    move-exception v2

    .line 3099
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_57
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1a

    .line 3102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3113
    :catch_1b
    move-exception v2

    .line 3114
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_58
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1b

    .line 3117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3128
    :catch_1c
    move-exception v2

    .line 3129
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_59
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1c

    .line 3132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3143
    :catch_1d
    move-exception v2

    .line 3144
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1d

    .line 3147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3158
    :catch_1e
    move-exception v2

    .line 3159
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1e

    .line 3162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3174
    :catch_1f
    move-exception v2

    .line 3175
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1f

    .line 3178
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3190
    :catch_20
    move-exception v2

    .line 3191
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_20

    .line 3194
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_20
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3209
    :catch_21
    move-exception v2

    .line 3210
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_21

    .line 3213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_21
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3224
    :catch_22
    move-exception v2

    .line 3225
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_5f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_22

    .line 3228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_22
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3238
    :catch_23
    move-exception v2

    .line 3239
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_60
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_23

    .line 3242
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_23
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3252
    :catch_24
    move-exception v2

    .line 3253
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_61
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_24

    .line 3256
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_24
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3266
    :catch_25
    move-exception v2

    .line 3267
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_62
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_25

    .line 3270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_25
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3282
    :catch_26
    move-exception v2

    .line 3283
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_63
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_26

    .line 3286
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_26
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3299
    :catch_27
    move-exception v2

    .line 3300
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_64
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_27

    .line 3303
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_27
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3316
    :catch_28
    move-exception v2

    .line 3317
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_65
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_28

    .line 3320
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_28
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3331
    :catch_29
    move-exception v2

    .line 3332
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_66
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_29

    .line 3335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_29
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3346
    :catch_2a
    move-exception v2

    .line 3347
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_67
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2a

    .line 3350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2a
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3360
    :catch_2b
    move-exception v2

    .line 3361
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_68
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2b

    .line 3364
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2b
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3376
    :catch_2c
    move-exception v2

    .line 3377
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_69
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2c

    .line 3380
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3391
    :catch_2d
    move-exception v2

    .line 3392
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6a
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2d

    .line 3395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2d
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3405
    :catch_2e
    move-exception v2

    .line 3406
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6b
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2e

    .line 3409
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2e
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3420
    :catch_2f
    move-exception v2

    .line 3421
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6c
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2f

    .line 3424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_2f
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3435
    :catch_30
    move-exception v2

    .line 3436
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6d
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_30

    .line 3439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_30
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3450
    :catch_31
    move-exception v2

    .line 3451
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6e
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_31

    .line 3454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_31
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3464
    :catch_32
    move-exception v2

    .line 3465
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_6f
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_32

    .line 3468
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_32
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3478
    :catch_33
    move-exception v2

    .line 3479
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_70
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_33

    .line 3482
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_33
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3493
    :catch_34
    move-exception v2

    .line 3494
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_71
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_34

    .line 3497
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_34
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3508
    :catch_35
    move-exception v2

    .line 3509
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_72
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_35

    .line 3512
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_35
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3523
    :catch_36
    move-exception v2

    .line 3524
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_73
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_36

    .line 3527
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_36
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3538
    :catch_37
    move-exception v2

    .line 3539
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_74
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_37

    .line 3542
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_37
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3554
    :catch_38
    move-exception v2

    .line 3555
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_75
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_38

    .line 3558
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_38
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3570
    :catch_39
    move-exception v2

    .line 3571
    .restart local v2       #ex:Ljava/lang/Throwable;
    :try_start_76
    const-string v3, "MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_39

    .line 3574
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_39
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2682
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method
