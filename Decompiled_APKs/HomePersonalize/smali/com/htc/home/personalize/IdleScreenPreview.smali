.class public Lcom/htc/home/personalize/IdleScreenPreview;
.super Landroid/app/Activity;
.source "IdleScreenPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    }
.end annotation


# static fields
.field static final EXTRA_IDLE_SCREEN_INTENT:Ljava/lang/String; = "android.idle_screen.intent"

.field static final EXTRA_IDLE_SCREEN_LABEL:Ljava/lang/String; = "android.idle_screen.label"

.field static final EXTRA_IDLE_SCREEN_PACKAGE:Ljava/lang/String; = "android.idle_screen.package"

.field static final EXTRA_IDLE_SCREEN_PREVIEW_INTENT:Ljava/lang/String; = "android.idle_screen.preview.intent"

.field static final EXTRA_IDLE_SCREEN_SETTINGS:Ljava/lang/String; = "android.idle_screen.settings"

.field private static final IDLE_SCREEN_FORMAT:I = 0x1

.field private static final IDLE_SCREEN_WINDOW_FLAG:I = 0x10100318

.field private static final LOG_TAG:Ljava/lang/String; = "IdleScreenPreview"

.field static final PREVIEW_SERVICE_INTERFACE:Ljava/lang/String; = "com.htc.lockscreen.idlescreen.preview.IdleScreenService"

.field private static final REQUEST_IDLESCREEN_SETTING:I = 0x102


# instance fields
.field private mBtn1Click:Landroid/view/View$OnClickListener;

.field private mBtn2Click:Landroid/view/View$OnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

.field private mIdleScreenIntent:Landroid/content/Intent;

.field private mIdleScreenLabel:Ljava/lang/String;

.field private mIdleScreenPreviewIntent:Landroid/content/Intent;

.field private mKeyguardManager:Landroid/app/HtcIfKeyguardManager;

.field private mPackageName:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 77
    iput-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 78
    iput-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 291
    new-instance v0, Lcom/htc/home/personalize/IdleScreenPreview$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/IdleScreenPreview$2;-><init>(Lcom/htc/home/personalize/IdleScreenPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/htc/home/personalize/IdleScreenPreview$3;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/IdleScreenPreview$3;-><init>(Lcom/htc/home/personalize/IdleScreenPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/IdleScreenPreview;Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/widget/HtcFooter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/IdleScreenPreview;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private notifyIdleScreenTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method private showApplyToast(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 188
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 189
    return-void
.end method

.method private showLoading()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 238
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 239
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    .local v0, content:Landroid/widget/TextView;
    const v4, 0x7f09002d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 242
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x1030008

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    .line 244
    iget-object v4, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 245
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 247
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 251
    iget-object v4, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v4, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 255
    return-void
.end method

.method static showPreview(Landroid/app/Activity;ILandroid/content/Intent;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V
    .locals 3
    .parameter "activity"
    .parameter "code"
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, preview:Landroid/content/Intent;
    const-string v1, "android.idle_screen.intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string v1, "android.idle_screen.settings"

    invoke-virtual {p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "android.idle_screen.package"

    invoke-virtual {p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "android.idle_screen.label"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method


# virtual methods
.method public configureIdleScreen(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mSettings:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    iget-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/HtcIfKeyguardManager;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 149
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->notifyIdleScreenTitle(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->showApplyToast(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/IdleScreenPreview;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->finish()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 226
    invoke-direct {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->showLoading()V

    .line 228
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    new-instance v1, Lcom/htc/home/personalize/IdleScreenPreview$1;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/IdleScreenPreview$1;-><init>(Lcom/htc/home/personalize/IdleScreenPreview;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f090001

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 100
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "android.idle_screen.intent"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenIntent:Landroid/content/Intent;

    .line 101
    const-string v6, "android.idle_screen.preview.intent"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenPreviewIntent:Landroid/content/Intent;

    .line 103
    :try_start_0
    const-string v6, "android.idle_screen.label"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenIntent:Landroid/content/Intent;

    if-nez v6, :cond_0

    .line 107
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/IdleScreenPreview;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->finish()V

    .line 111
    :cond_0
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/IdleScreenPreview;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->setupHeaderFooter()V

    .line 114
    const-string v6, "android.idle_screen.settings"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mSettings:Ljava/lang/String;

    .line 115
    const-string v6, "android.idle_screen.package"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mPackageName:Ljava/lang/String;

    .line 116
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mSettings:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 118
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 127
    :goto_1
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/IdleScreenPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcIfKeyguardManager;

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    .line 129
    new-instance v6, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    iget-object v7, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenPreviewIntent:Landroid/content/Intent;

    invoke-direct {v6, p0, v7}, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;-><init>(Lcom/htc/home/personalize/IdleScreenPreview;Landroid/content/Intent;)V

    iput-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    .line 131
    const-string v6, "common_app_bkg"

    const v7, 0x20806b7

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, background:I
    const v6, 0x7f0b0022

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/IdleScreenPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 133
    .local v3, footerBackground:Landroid/widget/ImageView;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/IdleScreenPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 136
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205017a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 137
    .local v4, footerHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 138
    .local v5, matrix:Landroid/graphics/Matrix;
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 140
    return-void

    .line 121
    .end local v0           #background:I
    .end local v1           #display:Landroid/view/Display;
    .end local v3           #footerBackground:Landroid/widget/ImageView;
    .end local v4           #footerHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_1
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 122
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 124
    iget-object v6, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 104
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 261
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    invoke-virtual {v0}, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIdleScreen(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mSettings:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "is_apply"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const/16 v2, 0x102

    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/IdleScreenPreview;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    iget-object v3, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/HtcIfKeyguardManager;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 168
    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/home/personalize/IdleScreenPreview;->notifyIdleScreenTitle(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenLabel:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/home/personalize/IdleScreenPreview;->showApplyToast(Ljava/lang/String;)V

    .line 170
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/IdleScreenPreview;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/home/personalize/IdleScreenPreview;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IdleScreenPreview"

    const-string v3, "Failure setting lock screen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupHeaderFooter()V
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 91
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 92
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/IdleScreenPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 93
    return-void
.end method
