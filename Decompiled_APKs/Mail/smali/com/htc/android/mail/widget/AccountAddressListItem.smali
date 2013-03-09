.class public Lcom/htc/android/mail/widget/AccountAddressListItem;
.super Lcom/htc/widget/HtcListItem;
.source "AccountAddressListItem.java"


# instance fields
.field aBar:Lcom/htc/widget/HtcListItemColorBar;

.field aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

.field aText:Lcom/htc/widget/HtcListItem2LineText;

.field private accountId:J

.field private mContext:Landroid/content/Context;

.field private mIsInverseBackgroundColor:Z

.field private providerIcon:Lcom/htc/widget/HtcListItemColorIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v3, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mContext:Landroid/content/Context;

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->accountId:J

    .line 27
    iput-object v3, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    .line 36
    iput-object p1, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, factory:Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v2, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mContext:Landroid/content/Context;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->accountId:J

    .line 27
    iput-object v2, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    .line 47
    return-void
.end method

.method private final init()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/AccountAddressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    .line 51
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/AccountAddressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    iput-object v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    .line 52
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/AccountAddressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorBar;

    iput-object v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 53
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/AccountAddressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 54
    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;Landroid/database/Cursor;Landroid/content/Context;ZZ)V
    .locals 16
    .parameter "view"
    .parameter "cur"
    .parameter "context"
    .parameter "onlyOneAccount"
    .parameter "noUnreadBubble"

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/widget/AccountAddressListItem;->init()V

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    if-eqz v13, :cond_2

    .line 60
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030012

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030025

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 67
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 68
    .local v8, id:J
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    const-wide/16 v13, -0x1

    cmp-long v13, v8, v13

    if-nez v13, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0090

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setVisibility(I)V

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 169
    :cond_1
    :goto_1
    return-void

    .line 63
    .end local v8           #id:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030036

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x203003d

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_0

    .line 79
    .restart local v8       #id:J
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, desc:Ljava/lang/String;
    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, addr:Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 82
    .local v4, count:I
    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 84
    .local v10, isDefault:I
    const/4 v13, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, provider:Ljava/lang/String;
    const/4 v13, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 87
    .local v11, protocol:I
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableAccountListColorIcon()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 89
    if-nez v12, :cond_4

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 96
    :goto_2
    const/4 v13, 0x6

    if-ne v11, v13, :cond_a

    .line 98
    const-string v13, "Yahoo"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020046

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 124
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 131
    if-nez p4, :cond_10

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v13, v8, v13

    if-eqz v13, :cond_10

    .line 132
    const/4 v13, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Lcom/htc/android/mail/Account;->getDecodedColorIdx(I)[I

    move-result-object v7

    .line 133
    .local v7, encodedColorIdx:[I
    const/4 v13, 0x0

    aget v2, v7, v13

    .line 134
    .local v2, colorGroupIdx:I
    const/4 v13, 0x1

    aget v3, v7, v13

    .line 135
    .local v3, colorIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    sget-object v14, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    aget-object v14, v14, v2

    aget v14, v14, v3

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    if-eqz v13, :cond_f

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030012

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 158
    .end local v2           #colorGroupIdx:I
    .end local v3           #colorIdx:I
    .end local v7           #encodedColorIdx:[I
    :goto_4
    if-lez v4, :cond_13

    if-nez p5, :cond_13

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    invoke-virtual {v13, v4}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setCount(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setVisibility(I)V

    .line 165
    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b002e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, defaultString:Ljava/lang/String;
    if-nez p4, :cond_1

    if-lez v10, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v15}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    .end local v5           #defaultString:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto/16 :goto_2

    .line 100
    :cond_5
    const-string v13, "AOL"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 101
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    if-eqz v13, :cond_6

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f02002e

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 104
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f02002d

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 106
    :cond_7
    const-string v13, "MSN"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020040

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 108
    :cond_8
    const-string v13, "Google"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f02003f

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 111
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020026

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 113
    :cond_a
    const/4 v13, 0x4

    if-eq v11, v13, :cond_b

    const/16 v13, 0xa

    if-ne v11, v13, :cond_c

    .line 114
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020017

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 115
    :cond_c
    const-string v13, "Verizon"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020045

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 118
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v14, 0x7f020026

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_3

    .line 121
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->providerIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto/16 :goto_3

    .line 141
    .restart local v2       #colorGroupIdx:I
    .restart local v3       #colorIdx:I
    .restart local v7       #encodedColorIdx:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030036

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    goto/16 :goto_4

    .line 143
    .end local v2           #colorGroupIdx:I
    .end local v3           #colorIdx:I
    .end local v7           #encodedColorIdx:[I
    :cond_10
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v13, v8, v13

    if-nez v13, :cond_12

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030036

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    if-eqz v13, :cond_11

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030012

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    goto/16 :goto_4

    .line 151
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aText:Lcom/htc/widget/HtcListItem2LineText;

    const v14, 0x2030036

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    goto/16 :goto_4

    .line 154
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 162
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/widget/AccountAddressListItem;->aCount:Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/widget/MailListItemGreenBubbleStamp;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->accountId:J

    .line 43
    return-void
.end method

.method public setInverseBackgroundColor(Z)V
    .locals 0
    .parameter "isInverse"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/AccountAddressListItem;->mIsInverseBackgroundColor:Z

    .line 173
    return-void
.end method
