.class public final Lcom/htc/provider/Notes$SettingsColumns;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsColumns"
.end annotation


# static fields
.field public static final COLUMN_SYNC_LAST_USN:Ljava/lang/String; = "last_usn"

.field public static final COLUMN_SYNC_TIME:Ljava/lang/String; = "sync_time"

.field public static final COLUMN_SYNC_TYPE:Ljava/lang/String; = "sync_type"

.field public static final COLUMN_TMP_SYNC_LAST_USN:Ljava/lang/String; = "tmp_last_usn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
