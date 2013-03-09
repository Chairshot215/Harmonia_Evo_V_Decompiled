.class public Lcom/htc/android/mail/util/EmailAddressAdapter;
.super Landroid/widget/IMECursorAdapter;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;,
        Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htc_ime"

.field private static final CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static DEBUG:Z = false

.field private static final HTCIMEProvider_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INPUT_TYPE_DEFAULT:I = 0x0

.field private static final MINIMUM_GAL_CONSTRAINT_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmailAddressAdapter"


# instance fields
.field private MAX_STRING_COLLECT:I

.field private csa:Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;

.field private isGALCompleted:Z

.field protected mContext:Landroid/content/Context;

.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field private mRes:Landroid/content/res/Resources;

.field userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    .line 56
    const-string v0, "content://htc_ime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "typo_correct_contacts_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "typo_correct_top_website"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/IMECursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 51
    iput-boolean v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->MAX_STRING_COLLECT:I

    .line 65
    iput-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->csa:Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;

    .line 68
    const-string v0, "EmailAddressAdapter"

    const-string v1, "searchGAL create>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mRes:Landroid/content/res/Resources;

    .line 71
    new-instance v0, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;

    invoke-direct {v0, p0, p1, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;-><init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->csa:Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;

    .line 72
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->setSuperType(Z)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/util/EmailAddressAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mRes:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method private getContactSeparatorPosition()I
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 649
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    if-eqz v1, :cond_0

    .line 650
    check-cast v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getContactSeparatorPosition()I

    move-result v1

    .line 652
    :goto_0
    return v1

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getHistorySeparatorPosition()I
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 640
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    if-eqz v1, :cond_0

    .line 641
    check-cast v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getHistorySeparatorPosition()I

    move-result v1

    .line 643
    :goto_0
    return v1

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getServerSeparatorPosition()I
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 658
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    if-eqz v1, :cond_0

    .line 659
    check-cast v0, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getServerSeparatorPosition()I

    move-result v1

    .line 661
    :goto_0
    return v1

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 119
    const-string v15, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, name:Ljava/lang/String;
    const-string v15, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, address:Ljava/lang/String;
    const-string v15, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, _type:Ljava/lang/String;
    const-string v15, "data3"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, _label:Ljava/lang/String;
    const-string v15, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, _methodId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 126
    .local v9, fontStyle:I
    :try_start_0
    const-string v15, "style"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 131
    :goto_0
    if-nez v12, :cond_0

    .line 132
    const v15, 0x7f0b0086

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 134
    :cond_0
    const/4 v14, -0x1

    .line 135
    .local v14, type:I
    const-wide/16 v2, -0x1

    .line 138
    .local v2, _mId:J
    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 140
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    .line 141
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 150
    :cond_2
    :goto_1
    const v15, 0x7f0900b0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 151
    .local v13, nameView:Landroid/widget/TextView;
    const v15, 0x7f0900b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 152
    .local v6, addrView:Landroid/widget/TextView;
    const v15, 0x7f0900b1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 154
    .local v10, labelView:Landroid/widget/TextView;
    const/4 v11, 0x0

    .line 155
    .local v11, maxWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v15}, Lcom/htc/android/mail/ComposeActivity;->getmPortMode()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mRes:Landroid/content/res/Resources;

    const v16, 0x7f08000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v11, v15

    .line 160
    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 162
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v15, 0x1

    if-ne v9, v15, :cond_5

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getAddrCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_3
    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f0b0087

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_3
    const-string v15, ""

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 127
    .end local v2           #_mId:J
    .end local v6           #addrView:Landroid/widget/TextView;
    .end local v10           #labelView:Landroid/widget/TextView;
    .end local v11           #maxWidth:I
    .end local v13           #nameView:Landroid/widget/TextView;
    .end local v14           #type:I
    :catch_0
    move-exception v8

    .line 128
    .local v8, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 143
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v2       #_mId:J
    .restart local v14       #type:I
    :catch_1
    move-exception v8

    .line 145
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v15, "EmailAddressAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "get NumberFormatException exception in bindView()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 158
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #addrView:Landroid/widget/TextView;
    .restart local v10       #labelView:Landroid/widget/TextView;
    .restart local v11       #maxWidth:I
    .restart local v13       #nameView:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mRes:Landroid/content/res/Resources;

    const v16, 0x7f08000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v11, v15

    goto/16 :goto_2

    .line 166
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    .local v0, old:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/util/EmailAddressAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter$1;-><init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/database/Cursor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    :cond_0
    return-void
.end method

.method closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 596
    if-nez p1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 194
    :cond_0
    const-string v0, ""

    .line 216
    :cond_1
    :goto_0
    return-object v0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->setclickName(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    const-string v2, "data1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->setclickAddr(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    const-string v2, "contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->setclickId(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->setclickmId(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getclickName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, clickName:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getclickAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->setclickName(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getclickAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 41
    .parameter "infilter"

    .prologue
    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z

    .line 261
    move-object/from16 v25, p1

    .line 263
    .local v25, changeFilter:Ljava/lang/String;
    move-object/from16 v31, v25

    .line 264
    .local v31, filter:Ljava/lang/String;
    const/16 v24, 0x0

    .line 265
    .local v24, c:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getmDomain()Ljava/lang/String;

    move-result-object v36

    .line 266
    .local v36, mDomain:Ljava/lang/String;
    if-nez v31, :cond_0

    const-string v31, ""

    .line 267
    :cond_0
    if-nez v36, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 269
    :cond_1
    const/16 v34, 0x0

    .line 270
    .local v34, filterString2:Ljava/lang/String;
    const/16 v33, 0x0

    .line 271
    .local v33, filterString1:Ljava/lang/String;
    const/16 v32, 0x0

    .line 274
    .local v32, filterString:Ljava/lang/String;
    const/4 v9, 0x0

    .line 275
    .local v9, whereHistoryNotDomain:Ljava/lang/String;
    const/4 v5, 0x0

    .line 277
    .local v5, whereHistoryDomain:Ljava/lang/String;
    const/16 v20, 0x0

    .line 278
    .local v20, HistCDomain:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 279
    .local v21, HistCNotDomain:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 280
    .local v19, ContCDomain:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 281
    .local v18, ContC:Landroid/database/Cursor;
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v30, excludedAddress:Ljava/lang/StringBuffer;
    const/16 v23, 0x0

    .line 283
    .local v23, builder:Landroid/net/Uri$Builder;
    const/16 v26, 0x0

    .line 286
    .local v26, contUri:Landroid/net/Uri;
    :try_start_0
    const-string v2, "!"

    const-string v3, "!!"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    .line 287
    const-string v2, "_"

    const-string v3, "!_"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 288
    const-string v2, "%"

    const-string v3, "!%"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v32 .. v32}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v32 .. v32}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\') AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v32 .. v32}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v32 .. v32}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\')  AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where whereHistoryNotDomain>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where whereHistoryDomain>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_DOMAIN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_NOT_DOMAIN_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 300
    if-eqz v20, :cond_8

    .line 301
    const-string v2, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 302
    .local v35, index:I
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 304
    .local v22, address:Ljava/lang/String;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 305
    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 306
    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v22           #address:Ljava/lang/String;
    .end local v35           #index:I
    :catch_0
    move-exception v29

    move-object/from16 v11, v26

    .line 413
    .end local v26           #contUri:Landroid/net/Uri;
    .local v11, contUri:Landroid/net/Uri;
    .local v29, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 418
    const/4 v15, 0x0

    .line 581
    .end local v29           #e:Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-object v15

    .line 308
    .end local v11           #contUri:Landroid/net/Uri;
    .restart local v22       #address:Ljava/lang/String;
    .restart local v26       #contUri:Landroid/net/Uri;
    .restart local v35       #index:I
    :cond_6
    :try_start_1
    const-string v2, ", "

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 311
    .end local v22           #address:Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 313
    .end local v35           #index:I
    :cond_8
    if-eqz v21, :cond_c

    .line 314
    const-string v2, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 315
    .restart local v35       #index:I
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 316
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 317
    .restart local v22       #address:Ljava/lang/String;
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 318
    :cond_9
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 319
    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 321
    :cond_a
    const-string v2, ", "

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 324
    .end local v22           #address:Ljava/lang/String;
    :cond_b
    const/4 v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 327
    .end local v35           #index:I
    :cond_c
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HistCDomain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_d
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HistCNotDomain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_e
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sFilterEmailAddressURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 330
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 335
    .end local v26           #contUri:Landroid/net/Uri;
    .restart local v11       #contUri:Landroid/net/Uri;
    const/16 v38, 0x0

    .line 336
    .local v38, where:Ljava/lang/String;
    :try_start_2
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v39, whereDomainBuilder:Ljava/lang/StringBuilder;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v40, whereWithoutDomainBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_16

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lower(data1) not in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 340
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not null AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  <> \'\' AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not null AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> \'\' AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :goto_4
    const-string v28, ""

    .line 351
    .local v28, correctedString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->stringCorrection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    .line 352
    .local v27, correctArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 353
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v28

    .line 354
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corrected String:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/htc/android/mail/ComposeActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 358
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContCDomain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/htc/android/mail/ComposeActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 361
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_11
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, ""

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_1d

    .line 364
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "EmailAddressAdapter"

    const-string v3, "FirstQuery Count = 0"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_12
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sFilterEmailAddressURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 368
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 369
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/htc/android/mail/ComposeActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/htc/android/mail/ComposeActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\') AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\')  AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where whereHistoryNotDomain>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_13
    sget-boolean v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where whereHistoryDomain>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_DOMAIN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/htc/android/mail/MailProvider;->EMAIL_HISTORY_FOR_MERGE_NOT_DOMAIN_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 383
    if-eqz v20, :cond_19

    .line 384
    const-string v2, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 385
    .restart local v35       #index:I
    :goto_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 386
    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 387
    .restart local v22       #address:Ljava/lang/String;
    if-eqz v22, :cond_15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 388
    :cond_15
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 389
    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 411
    .end local v22           #address:Ljava/lang/String;
    .end local v27           #correctArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #correctedString:Ljava/lang/String;
    .end local v35           #index:I
    .end local v39           #whereDomainBuilder:Ljava/lang/StringBuilder;
    .end local v40           #whereWithoutDomainBuilder:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v29

    goto/16 :goto_1

    .line 345
    .restart local v39       #whereDomainBuilder:Ljava/lang/StringBuilder;
    .restart local v40       #whereWithoutDomainBuilder:Ljava/lang/StringBuilder;
    :cond_16
    const/16 v38, 0x0

    .line 346
    const-string v2, "data1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not null AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> \'\' AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, "data1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not null AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> \'\' AND lower("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not like \'%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 391
    .restart local v22       #address:Ljava/lang/String;
    .restart local v27       #correctArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28       #correctedString:Ljava/lang/String;
    .restart local v35       #index:I
    :cond_17
    const-string v2, ", "

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 394
    .end local v22           #address:Ljava/lang/String;
    :cond_18
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 396
    .end local v35           #index:I
    :cond_19
    if-eqz v21, :cond_1d

    .line 397
    const-string v2, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 398
    .restart local v35       #index:I
    :goto_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 399
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 400
    .restart local v22       #address:Ljava/lang/String;
    if-eqz v22, :cond_1a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 401
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 402
    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 404
    :cond_1b
    const-string v2, ", "

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 407
    .end local v22           #address:Ljava/lang/String;
    :cond_1c
    const/4 v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 426
    .end local v35           #index:I
    :cond_1d
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "display_name"

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "data1"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "_id"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    const-string v3, "data2"

    aput-object v3, v16, v2

    const/4 v2, 0x4

    const-string v3, "contact_id"

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "data3"

    aput-object v3, v16, v2

    const/4 v2, 0x6

    const-string v3, "style"

    aput-object v3, v16, v2

    .line 434
    .local v16, matrixColumns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 436
    .local v17, matrixCursor:Landroid/database/MatrixCursor;
    new-instance v15, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v3, 0x1

    aput-object v21, v2, v3

    const/4 v3, 0x2

    aput-object v19, v2, v3

    const/4 v3, 0x3

    aput-object v18, v2, v3

    const/4 v3, 0x4

    aput-object v17, v2, v3

    invoke-direct {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 440
    .local v15, mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;
    if-eqz v19, :cond_1f

    if-eqz v20, :cond_1f

    if-eqz v21, :cond_1f

    if-eqz v18, :cond_1f

    .line 447
    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_1e

    .line 448
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setHistorySeparatorPosition(I)V

    .line 449
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setHistoryCount(I)V

    .line 451
    :cond_1e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_1f

    .line 452
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setContactCount(I)V

    .line 453
    invoke-virtual {v15}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getHistorySeparatorPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    .line 454
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setContactSeparatorPosition(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 468
    :cond_1f
    :goto_7
    if-eqz v15, :cond_20

    .line 469
    invoke-virtual {v15}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getCount()I

    .line 471
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->chechHasGALSearch()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 489
    move-object/from16 v14, p1

    .line 492
    .local v14, galFilter:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int v37, v2, v3

    .line 494
    .local v37, serverSeparator:I
    invoke-virtual {v15}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getHistorySeparatorPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 495
    add-int/lit8 v37, v37, 0x1

    .line 497
    :cond_21
    invoke-virtual {v15}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->getContactSeparatorPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    .line 498
    add-int/lit8 v37, v37, 0x1

    .line 501
    :cond_22
    move/from16 v0, v37

    invoke-virtual {v15, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setServerSeparatorPosition(I)V

    .line 503
    new-instance v2, Ljava/lang/Thread;

    new-instance v12, Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/htc/android/mail/util/EmailAddressAdapter$2;-><init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Ljava/lang/String;Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;[Ljava/lang/String;Landroid/database/MatrixCursor;)V

    invoke-direct {v2, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 456
    .end local v14           #galFilter:Ljava/lang/String;
    .end local v37           #serverSeparator:I
    :cond_23
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setContactSeparatorPosition(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 459
    :catch_2
    move-exception v29

    .line 460
    .restart local v29       #e:Ljava/lang/Exception;
    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MergeCursor error>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->closeCursor(Landroid/database/Cursor;)V

    .line 465
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method doFilterCheat()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 587
    const-string v3, "_id = -1"

    .line 588
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 592
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public getAddrCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "addr"

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 254
    .end local p1
    :goto_0
    return-object p1

    .line 247
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getmDomain()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->setmDomain(Ljava/lang/String;)V

    .line 250
    :cond_1
    invoke-static {p1}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->userName:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getmDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->userName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 254
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getmDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>&gt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 799
    invoke-super {p0}, Landroid/widget/IMECursorAdapter;->getCount()I

    move-result v0

    .line 800
    .local v0, count:I
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 802
    add-int/lit8 v0, v0, 0x1

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 806
    add-int/lit8 v0, v0, 0x1

    .line 808
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 810
    add-int/lit8 v0, v0, 0x1

    .line 812
    :cond_2
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/IMECursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 876
    :cond_0
    const-wide/16 v0, -0x1

    .line 878
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/IMECursorAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 670
    :cond_0
    const/4 v0, -0x1

    .line 672
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/IMECursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRealPosition(I)I
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, -0x1

    .line 820
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v3

    .line 821
    .local v3, historySeparatorPosition:I
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v0

    .line 822
    .local v0, ContactSeparatorPosition:I
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v4

    .line 823
    .local v4, serverSeparatorPosition:I
    const/4 v1, 0x0

    .line 824
    .local v1, addCount:I
    const/4 v2, 0x0

    .line 841
    .local v2, hasAdd:Z
    if-eq v3, v5, :cond_0

    if-le p1, v3, :cond_0

    .line 842
    add-int/lit8 v1, v1, 0x1

    .line 843
    const/4 v2, 0x1

    .line 845
    :cond_0
    if-eq v0, v5, :cond_1

    if-le p1, v0, :cond_1

    .line 846
    add-int/lit8 v1, v1, 0x1

    .line 847
    const/4 v2, 0x1

    .line 849
    :cond_1
    if-eq v4, v5, :cond_2

    if-le p1, v4, :cond_2

    .line 850
    add-int/lit8 v1, v1, 0x1

    .line 851
    const/4 v2, 0x1

    .line 858
    :cond_2
    sub-int v5, p1, v1

    return v5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f090160

    const v8, 0x7f0900d4

    const v5, 0x7f03003e

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 685
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 687
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 688
    .local v2, separator:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 689
    .local v3, text1:Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 693
    .local v1, progress:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0117

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, bannerText:Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 708
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 712
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 713
    .restart local v2       #separator:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 714
    .restart local v3       #text1:Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 718
    .restart local v1       #progress:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    .restart local v0       #bannerText:Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 736
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 738
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 739
    .restart local v2       #separator:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 740
    .restart local v3       #text1:Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 744
    .restart local v1       #progress:Landroid/view/View;
    iget-boolean v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z

    if-nez v4, :cond_2

    .line 745
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0316

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    .restart local v0       #bannerText:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 766
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 748
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0317

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .restart local v0       #bannerText:Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 769
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getRealPosition(I)I

    move-result v4

    invoke-super {p0, v4, p2, p3}, Landroid/widget/IMECursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getHistorySeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getContactSeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->getServerSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 786
    :cond_0
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 104
    .local v1, view:Landroid/widget/LinearLayout;
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
