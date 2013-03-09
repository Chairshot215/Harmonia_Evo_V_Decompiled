.class interface abstract Lcom/android/providers/contacts/LegacyApiSupport$SettingsMatchQuery;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyApiSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SettingsMatchQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final SHOULD_SYNC:I = 0x2

.field public static final SQL:Ljava/lang/String; = "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"
