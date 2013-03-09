.class public Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;
.super Ljava/lang/Object;
.source "MailWidgetBase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WidgetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method protected constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->handleMessage(Landroid/os/Message;)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method
