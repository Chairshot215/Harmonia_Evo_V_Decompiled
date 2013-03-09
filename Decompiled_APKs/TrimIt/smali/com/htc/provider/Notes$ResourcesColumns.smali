.class public final Lcom/htc/provider/Notes$ResourcesColumns;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Lcom/htc/provider/Notes$NotesBaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourcesColumns"
.end annotation


# static fields
.field public static final COLUMN_DATA:Ljava/lang/String; = "_data"

.field public static final COLUMN_HASHCODE:Ljava/lang/String; = "hashcode"

.field public static final COLUMN_MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_NOTE_ID:Ljava/lang/String; = "note_id"

.field public static final COLUMN_REF_COUNT:Ljava/lang/String; = "ref_count"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
