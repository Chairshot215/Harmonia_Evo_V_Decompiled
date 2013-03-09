.class Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MailAccountOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field accountView:Landroid/widget/TextView;

.field addressView:Landroid/widget/TextView;

.field barView:Landroid/widget/ImageView;

.field countView:Landroid/widget/TextView;

.field defaultView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;Lcom/htc/htcmailwidgets/MailAccountOption$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;)V

    return-void
.end method
