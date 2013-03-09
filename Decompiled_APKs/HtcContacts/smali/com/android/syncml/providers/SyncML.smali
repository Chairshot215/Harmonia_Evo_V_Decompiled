.class public Lcom/android/syncml/providers/SyncML;
.super Ljava/lang/Object;
.source "SyncML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/providers/SyncML$SyncStatus;,
        Lcom/android/syncml/providers/SyncML$SyncLog;,
        Lcom/android/syncml/providers/SyncML$SyncLogColumns;,
        Lcom/android/syncml/providers/SyncML$SessionInfo;,
        Lcom/android/syncml/providers/SyncML$SessionInfoColumns;,
        Lcom/android/syncml/providers/SyncML$ServerInfo;,
        Lcom/android/syncml/providers/SyncML$ServerInfoColumns;,
        Lcom/android/syncml/providers/SyncML$DatabaseInfo;,
        Lcom/android/syncml/providers/SyncML$DatabaseInfoColumns;,
        Lcom/android/syncml/providers/SyncML$ConnInfo;,
        Lcom/android/syncml/providers/SyncML$ConnInfoColumns;,
        Lcom/android/syncml/providers/SyncML$Profile;,
        Lcom/android/syncml/providers/SyncML$ProfileColumns;
    }
.end annotation


# static fields
.field public static final ACTION_SYNCML_PROFILE_UPDATED:Ljava/lang/String; = "com.android.syncml.providers.SYNCML_PROFILE_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "syncml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 596
    return-void
.end method
