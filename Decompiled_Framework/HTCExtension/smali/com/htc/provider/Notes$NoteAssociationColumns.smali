.class public final Lcom/htc/provider/Notes$NoteAssociationColumns;
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
    name = "NoteAssociationColumns"
.end annotation


# static fields
.field public static final COLUMN_ASSOCIATUION_URI:Ljava/lang/String; = "association_uri"

.field public static final COLUMN_ISFINISHED:Ljava/lang/String; = "isfinished"

.field public static final COLUMN_NOTE_ID:Ljava/lang/String; = "note_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
