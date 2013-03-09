.class public final Lcom/htc/provider/Notes$UnSycItemLogColumns;
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
    name = "UnSycItemLogColumns"
.end annotation


# static fields
.field public static final COLUMN_ACTION:Ljava/lang/String; = "action"

.field public static final COLUMN_DEST:Ljava/lang/String; = "dest_nb"

.field public static final COLUMN_DEST_ISLOCAL:Ljava/lang/String; = "dest_nb_islocal"

.field public static final COLUMN_FROM:Ljava/lang/String; = "from_nb"

.field public static final COLUMN_FROM_ISLOCAL:Ljava/lang/String; = "from_nb_islocal"

.field public static final COLUMN_ISDONE:Ljava/lang/String; = "isdone"

.field public static final COLUMN_NOTE_ID:Ljava/lang/String; = "note_id"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
