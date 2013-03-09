.class Lcom/android/settings/framework/preference/display/HtcTVOutPreference$1;
.super Landroid/database/ContentObserver;
.source "HtcTVOutPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/HtcTVOutPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/HtcTVOutPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcTVOutPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcTVOutPreference;

    #calls: Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->updateSummary()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->access$000(Lcom/android/settings/framework/preference/display/HtcTVOutPreference;)V

    .line 68
    return-void
.end method
