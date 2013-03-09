.class public Lcom/htc/util/contacts/ContactCardUtility;
.super Ljava/lang/Object;
.source "ContactCardUtility.java"


# static fields
.field public static final CONTACT_CARD_CALL:I = 0x4

.field public static final CONTACT_CARD_DETAIL:I = 0x1

.field public static final CONTACT_CARD_MAIL:I = 0x3

.field public static final CONTACT_CARD_MESSAGE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final getViewUnknownContactCardWithMailIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "mail"

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithMailIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewUnknownContactCardWithMailIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .parameter "mail"
    .parameter "defaultPage"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    if-eq v2, p1, :cond_2

    if-eq v3, p1, :cond_2

    if-ne v4, p1, :cond_0

    .line 104
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const-string v1, "unknown_mail_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string v1, "mail"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    if-ne v3, p1, :cond_3

    .line 111
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :cond_3
    if-ne v4, p1, :cond_0

    .line 113
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .parameter "number"
    .parameter "defaultPage"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    invoke-static {p0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithSpecialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_3
    const/4 v1, 0x1

    if-eq v1, p1, :cond_4

    if-eq v2, p1, :cond_4

    if-ne v3, p1, :cond_0

    .line 61
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    if-ne v2, p1, :cond_5

    .line 67
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 68
    :cond_5
    if-ne v3, p1, :cond_0

    .line 69
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getViewUnknownContactCardWithSpecialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "number"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
