.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyledTextDialog"
.end annotation


# static fields
.field private static final TYPE_BACKGROUND:I = 0x1

.field private static final TYPE_FOREGROUND:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlignNames:[Ljava/lang/CharSequence;

.field private mAlignTitle:Ljava/lang/CharSequence;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mColorDefaultMessage:Ljava/lang/CharSequence;

.field private mColorInts:[Ljava/lang/CharSequence;

.field private mColorNames:[Ljava/lang/CharSequence;

.field private mColorTitle:Ljava/lang/CharSequence;

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mMarqueeNames:[Ljava/lang/CharSequence;

.field private mMarqueeTitle:Ljava/lang/CharSequence;

.field private mSizeDisplayInts:[Ljava/lang/CharSequence;

.field private mSizeNames:[Ljava/lang/CharSequence;

.field private mSizeSendInts:[Ljava/lang/CharSequence;

.field private mSizeTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter "est"

    .prologue
    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 2035
    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowMarqueeAlertDialog()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowSizeAlertDialog()V

    return-void
.end method

.method private buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V
    .locals 12
    .parameter "type"
    .parameter "title"
    .parameter "colors"

    .prologue
    .line 2157
    const/4 v3, 0x5

    .line 2158
    .local v3, HORIZONTAL_ELEMENT_NUM:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v10, 0x32

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v2

    .line 2159
    .local v2, BUTTON_SIZE:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v10, 0x2

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v0

    .line 2160
    .local v0, BUTTON_MERGIN:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v10, 0xf

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I
    invoke-static {v9, v10}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v1

    .line 2161
    .local v1, BUTTON_PADDING:I
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2162
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2163
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2164
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2169
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2170
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2171
    .local v8, verticalLayout:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2172
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2173
    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2175
    const/4 v6, 0x0

    .line 2176
    .local v6, horizontalLayout:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v9, p3

    if-ge v7, v9, :cond_3

    .line 2177
    rem-int/lit8 v9, v7, 0x5

    if-nez v9, :cond_0

    .line 2178
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6           #horizontalLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2179
    .restart local v6       #horizontalLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2181
    :cond_0
    new-instance v4, Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v9}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2182
    .local v4, button:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 2183
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 2184
    new-instance v5, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;

    aget v9, p3, v7

    invoke-direct {v5, v9, v2, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;-><init>(IIII)V

    .line 2187
    .local v5, cp:Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2188
    aget v9, p3, v7

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setDrawingCacheBackgroundColor(I)V

    .line 2189
    if-nez p1, :cond_2

    .line 2190
    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;

    invoke-direct {v9, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    :cond_1
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2176
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2203
    :cond_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 2204
    new-instance v9, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;

    invoke-direct {v9, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2221
    .end local v4           #button:Landroid/widget/Button;
    .end local v5           #cp:Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;
    :cond_3
    const/4 v9, 0x1

    if-ne p1, v9, :cond_5

    .line 2222
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2237
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2238
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2239
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;

    invoke-direct {v10, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2244
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2245
    return-void

    .line 2228
    :cond_5
    if-nez p1, :cond_4

    .line 2229
    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    new-instance v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;

    invoke-direct {v11, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "title"
    .parameter "names"
    .parameter "l"

    .prologue
    const/4 v3, 0x0

    .line 2134
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2135
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2136
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2137
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2142
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2143
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2144
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2145
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;

    invoke-direct {v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2153
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2154
    return-void
.end method

.method private checkAlignAlertParams()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2106
    const-string v1, "EditStyledText"

    const-string v2, "--- checkAlignAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2109
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :goto_0
    return v0

    .line 2111
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 2112
    const-string v1, "EditStyledText"

    const-string v2, "--- align alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2115
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkColorAlertParams()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2070
    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2073
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :goto_0
    return v0

    .line 2075
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 2076
    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- color alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2078
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 2079
    const-string v1, "EditStyledText"

    const-string v2, "--- the length of color alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2082
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkMarqueeAlertParams()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2120
    const-string v1, "EditStyledText"

    const-string v2, "--- checkMarqueeAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2123
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :goto_0
    return v0

    .line 2125
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 2126
    const-string v1, "EditStyledText"

    const-string v2, "--- Marquee alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2129
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSizeAlertParams()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2087
    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2090
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :goto_0
    return v0

    .line 2092
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 2094
    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- size alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 2098
    const-string v1, "EditStyledText"

    const-string v2, "--- the length of size alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onShowAlignAlertDialog()V
    .locals 3

    .prologue
    .line 2294
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowAlignAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkAlignAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private onShowBackgroundColorAlertDialog()V
    .locals 4

    .prologue
    .line 2263
    const-string v2, "EditStyledText"

    const-string v3, "--- onShowBackgroundColorAlertDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    new-array v0, v2, [I

    .line 2269
    .local v0, colorInts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2270
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x100

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 2269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2272
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private onShowForegroundColorAlertDialog()V
    .locals 4

    .prologue
    .line 2249
    const-string v2, "EditStyledText"

    const-string v3, "--- onShowForegroundColorAlertDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkColorAlertParams()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2254
    :cond_0
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    array-length v2, v2

    new-array v0, v2, [I

    .line 2255
    .local v0, colorints:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2256
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x100

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 2255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2258
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildAndShowColorDialogue(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private onShowMarqueeAlertDialog()V
    .locals 3

    .prologue
    .line 2323
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowMarqueeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkMarqueeAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2336
    :goto_0
    return-void

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private onShowSizeAlertDialog()V
    .locals 3

    .prologue
    .line 2277
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowSizeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->checkSizeAlertParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    :goto_0
    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->buildDialogue(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "aligntitle"
    .parameter "alignnames"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignTitle:Ljava/lang/CharSequence;

    .line 2059
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mAlignNames:[Ljava/lang/CharSequence;

    .line 2060
    return-void
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 2039
    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "colortitle"
    .parameter "colornames"
    .parameter "colorInts"
    .parameter "defaultColorMessage"

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorTitle:Ljava/lang/CharSequence;

    .line 2044
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorNames:[Ljava/lang/CharSequence;

    .line 2045
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    .line 2046
    iput-object p4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mColorDefaultMessage:Ljava/lang/CharSequence;

    .line 2047
    return-void
.end method

.method public setMarqueeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "marqueetitle"
    .parameter "marqueenames"

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeTitle:Ljava/lang/CharSequence;

    .line 2065
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mMarqueeNames:[Ljava/lang/CharSequence;

    .line 2066
    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "sizetitle"
    .parameter "sizenames"
    .parameter "sizedisplayints"
    .parameter "sizesendints"

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeTitle:Ljava/lang/CharSequence;

    .line 2052
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeNames:[Ljava/lang/CharSequence;

    .line 2053
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeDisplayInts:[Ljava/lang/CharSequence;

    .line 2054
    iput-object p4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->mSizeSendInts:[Ljava/lang/CharSequence;

    .line 2055
    return-void
.end method
