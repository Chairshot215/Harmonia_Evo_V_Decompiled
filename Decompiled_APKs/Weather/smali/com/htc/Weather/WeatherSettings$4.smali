.class Lcom/htc/Weather/WeatherSettings$4;
.super Ljava/lang/Object;
.source "WeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherSettings;->showExtraFeeWarningDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherSettings;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    iput p2, p0, Lcom/htc/Weather/WeatherSettings$4;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/Weather/WeatherSettings$4;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    const/4 v1, 0x0

    #setter for: Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z
    invoke-static {v0, v1}, Lcom/htc/Weather/WeatherSettings;->access$102(Lcom/htc/Weather/WeatherSettings;Z)Z

    .line 371
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/Weather/WeatherSettings;->access$200(Lcom/htc/Weather/WeatherSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z
    invoke-static {v1}, Lcom/htc/Weather/WeatherSettings;->access$100(Lcom/htc/Weather/WeatherSettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setSyncAutomatically(Landroid/content/Context;Z)V

    .line 372
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/Weather/WeatherSettings;->access$300(Lcom/htc/Weather/WeatherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z
    invoke-static {v1}, Lcom/htc/Weather/WeatherSettings;->access$100(Lcom/htc/Weather/WeatherSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/Weather/WeatherSettings;->access$300(Lcom/htc/Weather/WeatherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    const v2, 0x7f0a0040

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$4;->this$0:Lcom/htc/Weather/WeatherSettings;

    #calls: Lcom/htc/Weather/WeatherSettings;->checkSyncControl()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherSettings;->access$400(Lcom/htc/Weather/WeatherSettings;)V

    .line 376
    :cond_0
    return-void
.end method
