.class public abstract Lcom/android/browser/homepages/Template$CursorListEntityWrapper;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lcom/android/browser/homepages/Template$ListEntityIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CursorListEntityWrapper"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/browser/homepages/Template$CursorListEntityWrapper;->mCursor:Landroid/database/Cursor;

    .line 122
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/browser/homepages/Template$CursorListEntityWrapper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListIterator(Ljava/lang/String;)Lcom/android/browser/homepages/Template$ListEntityIterator;
    .locals 1
    .parameter "key"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/browser/homepages/Template$CursorListEntityWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/homepages/Template$CursorListEntityWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 132
    return-void
.end method
