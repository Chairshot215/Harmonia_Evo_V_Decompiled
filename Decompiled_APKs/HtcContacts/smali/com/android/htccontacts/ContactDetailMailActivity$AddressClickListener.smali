.class final Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;
.super Ljava/lang/Object;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddressClickListener"
.end annotation


# instance fields
.field private mArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "array"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->mArray:[Ljava/lang/String;

    .line 997
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1000
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$200(Lcom/android/htccontacts/ContactDetailMailActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 1002
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/4 v4, 0x0

    .line 1003
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->independent:Z
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$400(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1004
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->independentName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$500(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/String;

    move-result-object v4

    .line 1005
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$400(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    :goto_0
    const-string v5, "mailto:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, mailTo:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1025
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v5, v2}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1026
    return-void

    .line 1010
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mailTo:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$AddressClickListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->independentEmailList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$400(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 1014
    .local v1, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v4, ""

    .line 1015
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1016
    iget-object v5, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 1019
    :cond_3
    iget-object v4, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    goto :goto_0
.end method
