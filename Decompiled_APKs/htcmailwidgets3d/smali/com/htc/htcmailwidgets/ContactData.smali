.class public Lcom/htc/htcmailwidgets/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"


# instance fields
.field display_name_:Ljava/lang/String;

.field email_:Ljava/lang/String;

.field photo_:Landroid/graphics/Bitmap;

.field photo_id_:J

.field pid_:J


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v1, p0, Lcom/htc/htcmailwidgets/ContactData;->pid_:J

    .line 15
    iput-object v0, p0, Lcom/htc/htcmailwidgets/ContactData;->display_name_:Ljava/lang/String;

    .line 16
    iput-wide v1, p0, Lcom/htc/htcmailwidgets/ContactData;->photo_id_:J

    .line 17
    iput-object v0, p0, Lcom/htc/htcmailwidgets/ContactData;->photo_:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/htc/htcmailwidgets/ContactData;->email_:Ljava/lang/String;

    .line 19
    return-void
.end method
