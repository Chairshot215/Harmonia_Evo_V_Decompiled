.class public Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    .line 327
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 328
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 333
    return-void
.end method
