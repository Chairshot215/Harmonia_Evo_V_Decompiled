.class Lcom/htc/android/mail/MailList$NonConfigurationInstance;
.super Ljava/lang/Object;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonConfigurationInstance"
.end annotation


# static fields
.field public static final KEY_CMD_BAR_BUTTON1_TEXT:Ljava/lang/String; = "key_cmd_bar_button1_text"

.field public static final KEY_SELECTED_MAIL_GROUPS:Ljava/lang/String; = "key_selected_mail_groups"

.field public static final KEY_SELECTED_MAIL_MESSAGES:Ljava/lang/String; = "key_selected_mail_messages"


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 1
    .parameter

    .prologue
    .line 6751
    iput-object p1, p0, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->map:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6751
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 6762
    iget-object v0, p0, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 6758
    iget-object v0, p0, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6759
    return-void
.end method
