.class public final Lcom/android/htccontacts/ContactDetailMailActivity$EmailAddressPickedListener;
.super Ljava/lang/Object;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "EmailAddressPickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$EmailAddressPickedListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 1109
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$EmailAddressPickedListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$600(Lcom/android/htccontacts/ContactDetailMailActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 1112
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :try_start_0
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .local v2, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :goto_0
    const-string v5, "mailto:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1121
    .local v4, mailTo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1122
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailMailActivity$EmailAddressPickedListener;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v5, v3}, Lcom/android/htccontacts/ContactDetailMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1123
    return-void

    .line 1116
    .end local v2           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mailTo:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1117
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 1118
    .restart local v2       #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const-string v5, "ContactDetailMailActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
