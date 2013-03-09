.class final Lcom/android/mms/ui/QTextActivity$QTextHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "QTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/QTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QTextHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/QTextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/QTextActivity;Lcom/android/mms/ui/QTextActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/mms/ui/QTextActivity$QTextHandler;-><init>(Lcom/android/mms/ui/QTextActivity;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/QTextActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-eqz p3, :cond_0

    .line 326
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    #getter for: Lcom/android/mms/ui/QTextActivity;->mNoQuickTextLable:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/QTextActivity;->access$200(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    #getter for: Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/QTextActivity;->access$300(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    #getter for: Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/QTextActivity;->access$300(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    #setter for: Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/QTextActivity;->access$402(Lcom/android/mms/ui/QTextActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextHandler;->this$0:Lcom/android/mms/ui/QTextActivity;

    #getter for: Lcom/android/mms/ui/QTextActivity;->mNoQuickTextLable:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/QTextActivity;->access$200(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
