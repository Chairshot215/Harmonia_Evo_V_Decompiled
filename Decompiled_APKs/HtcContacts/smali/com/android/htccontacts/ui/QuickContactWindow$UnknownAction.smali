.class Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/htccontacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnknownAction"
.end annotation


# instance fields
.field private final mData1:Ljava/lang/String;

.field private final mData2:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "mimeType"

    .prologue
    .line 987
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData2:Ljava/lang/String;

    .line 990
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    .line 991
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data1"
    .parameter "data2"
    .parameter "mimeType"

    .prologue
    .line 993
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    .line 995
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData2:Ljava/lang/String;

    .line 996
    iput-object p3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    .line 997
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1044
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 981
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFallbackIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1012
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "number"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    :cond_0
    :goto_0
    const/high16 v3, 0x1400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1036
    return-object v0

    .line 1014
    :cond_1
    const-string v3, "vnd.android.cursor.item/sms-address"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1015
    const-string v3, "smsto"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1016
    .local v2, smsUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1017
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1018
    .end local v2           #smsUri:Landroid/net/Uri;
    :cond_2
    const-string v3, "vnd.android.cursor.dir/contact"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1021
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SAVE_TO_PEOPLE_DIALOG"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1024
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1025
    const-string v3, "phone"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1028
    const-string v3, "email"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1031
    :cond_4
    const-string v3, "vnd.android.cursor.item/email_v2"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1032
    const-string v3, "mailto"

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mData1:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1033
    .local v1, mailUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 981
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;->shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
