.class public abstract Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MailCursorAdapter"
.end annotation


# instance fields
.field private mMailCursor:Lcom/google/android/gm/provider/Gmail$MailCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "mailCursor"
    .parameter "autoRequery"

    .prologue
    .line 2240
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2241
    iput-object p2, p0, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->mMailCursor:Lcom/google/android/gm/provider/Gmail$MailCursor;

    .line 2242
    return-void

    .line 2240
    :cond_0
    iget-object v0, p2, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method public getMailCursor()Lcom/google/android/gm/provider/Gmail$MailCursor;
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->mMailCursor:Lcom/google/android/gm/provider/Gmail$MailCursor;

    return-object v0
.end method

.method public swapMailCursor(Lcom/google/android/gm/provider/Gmail$MailCursor;)V
    .locals 1
    .parameter "mailCursor"

    .prologue
    .line 2250
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2251
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->mMailCursor:Lcom/google/android/gm/provider/Gmail$MailCursor;

    .line 2252
    return-void

    .line 2250
    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method
