.class final Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;
.super Ljava/lang/Object;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddressClickListener"
.end annotation


# instance fields
.field private mArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "array"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;->mArray:[Ljava/lang/String;

    .line 1082
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1085
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 1086
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;->mArray:[Ljava/lang/String;

    aget-object v0, v5, p2

    .line 1087
    .local v0, addr:Ljava/lang/String;
    iget-object v5, v1, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v4, ""

    .line 1088
    .local v4, name:Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1089
    invoke-static {v4, v0}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1093
    :goto_1
    const-string v5, "mailto:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, mailTo:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1095
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1096
    return-void

    .line 1087
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mailTo:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    iget-object v4, v1, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1091
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    move-object v4, v0

    goto :goto_1
.end method
