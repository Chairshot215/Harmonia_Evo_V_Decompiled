.class public Lcom/google/android/voicesearch/TimeoutDialog;
.super Landroid/app/Dialog;
.source "TimeoutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionText:Landroid/widget/TextView;

.field private mAddress:Ljava/lang/String;

.field private mAddressLayout:Landroid/widget/LinearLayout;

.field private mAddressText:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mDialogView:Landroid/view/View;

.field private mGoButton:Landroid/widget/Button;

.field private mGoButtonTextRes:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconId:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberText:Landroid/widget/TextView;

.field private mStartTime:J

.field private mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

.field private mTimeoutMillis:I

.field private mTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const v0, 0x7f0c0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/voicesearch/TimeoutDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/TimeoutDialog;)Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V

    return-void
.end method

.method private updateCountdownLevel()V
    .locals 7

    .prologue
    .line 184
    iget v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 189
    .local v1, elapsedTimeMillis:I
    int-to-float v3, v1

    iget v4, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 190
    .local v0, elapsedFraction:F
    const v3, 0x461c4000

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 192
    .local v2, level:I
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {v3, v2}, Lcom/google/android/voicesearch/CountdownDrawable;->setLevel(I)Z

    .line 196
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    invoke-interface {v3}, Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;->onTimeout()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDialogView:Landroid/view/View;

    new-instance v4, Lcom/google/android/voicesearch/TimeoutDialog$3;

    invoke-direct {v4, p0}, Lcom/google/android/voicesearch/TimeoutDialog$3;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    const-wide/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 109
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateLayout()V

    .line 111
    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDialogView:Landroid/view/View;

    .line 112
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressLayout:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressText:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIcon:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCancelButton:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$1;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$2;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/CountdownDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    .line 142
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 224
    const v0, 0x7f0a07e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$4;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    iget v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButtonTextRes:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "TimeoutDialog"

    const-string v3, "error: no action text"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_1

    :cond_2
    move v0, v1

    .line 158
    goto :goto_2

    :cond_3
    move v0, v1

    .line 160
    goto :goto_3

    :cond_4
    move v2, v1

    .line 162
    goto :goto_4
.end method

.method public setBusinessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "phoneNumber"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public startCountDown(ILcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;)V
    .locals 2
    .parameter "timeoutMillis"
    .parameter "listener"

    .prologue
    .line 177
    iput p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mStartTime:J

    .line 179
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    .line 180
    invoke-direct {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V

    .line 181
    return-void
.end method

.method public stopCountDown()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 214
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "action"
    .parameter "title"
    .parameter "description"
    .parameter "icon"
    .parameter "goButtonTextRes"

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitle:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    .line 101
    iput p4, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIconId:I

    .line 102
    iput p5, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButtonTextRes:I

    .line 103
    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;)V

    .line 238
    return-void
.end method
