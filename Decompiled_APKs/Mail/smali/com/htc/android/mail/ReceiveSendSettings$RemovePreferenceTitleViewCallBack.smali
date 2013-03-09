.class Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReceiveSendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemovePreferenceTitleViewCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;Lcom/htc/android/mail/ReceiveSendSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReceiveSendSettings$RemovePreferenceTitleViewCallBack;-><init>(Lcom/htc/android/mail/ReceiveSendSettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 154
    .local v0, titleView:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method
