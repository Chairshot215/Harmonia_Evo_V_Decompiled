.class public Lcom/htc/android/mail/ProviderListItem;
.super Landroid/widget/LinearLayout;
.source "ProviderListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;
    }
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mIsEnableProviderListItemIcon:Z

.field private mMainText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mMainText:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mImageView:Landroid/widget/ImageView;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ProviderListItem;->mIsEnableProviderListItemIcon:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mMainText:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mImageView:Landroid/widget/ImageView;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ProviderListItem;->mIsEnableProviderListItemIcon:Z

    .line 29
    return-void
.end method

.method public static isEnableProviderListItemIcon()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "c"

    .prologue
    .line 42
    const-string v8, "_provider"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, providerName:Ljava/lang/String;
    const-string v8, "_description"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, providerDesc:Ljava/lang/String;
    const-string v8, "_domain"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, domain:Ljava/lang/String;
    const-string v8, "_inprotocol"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 46
    .local v3, inProtocol:I
    const-string v8, "_resid"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 47
    .local v4, _resid:I
    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 49
    .local v5, _id:J
    const-string v8, "139"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 50
    const v8, 0x7f0b02d2

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getSimReady(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "O2___102"

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->getIsThisCID(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "T-MOB101"

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->getIsThisCID(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VODAP102"

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->getIsThisCID(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "HTC__102"

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->getIsThisCID(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 72
    :cond_1
    const-string v8, "Gmail"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Gmail"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 74
    :cond_2
    const-string v1, "Google Mail"

    .line 75
    const-string v2, "Google Mail"

    .line 76
    const-string v7, "googlemail.com"

    .line 80
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListItem;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v8, p0, Lcom/htc/android/mail/ProviderListItem;->mIsEnableProviderListItemIcon:Z

    if-eqz v8, :cond_4

    .line 83
    iget-object v8, p0, Lcom/htc/android/mail/ProviderListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_4
    new-instance v0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 87
    .local v0, attr:Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ProviderListItem;->setTag(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 51
    .end local v0           #attr:Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;
    :cond_5
    const-string v8, "Other"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b02c8

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (POP3/IMAP)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_6
    if-eqz v2, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 55
    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ProviderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mMainText:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ProviderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/htc/android/mail/ProviderListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ProviderListItem;->mIsEnableProviderListItemIcon:Z

    .line 39
    :cond_0
    return-void
.end method
