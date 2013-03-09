.class public final Lcom/htc/provider/Notes$NotebooksColumns;
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
    name = "NotebooksColumns"
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final COLUMN_ISDEFAULT:Ljava/lang/String; = "isdefault"

.field public static final COLUMN_ISLOCAL:Ljava/lang/String; = "islocal"

.field public static final COLUMN_STACK:Ljava/lang/String; = "stack"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
