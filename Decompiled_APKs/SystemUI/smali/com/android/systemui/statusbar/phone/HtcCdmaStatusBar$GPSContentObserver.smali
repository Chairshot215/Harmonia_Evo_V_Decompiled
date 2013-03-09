.class Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;
.super Landroid/database/ContentObserver;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$002(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Z)Z

    const-string v0, "HtcCdmaStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange, isGpsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_lbs"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$102(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Z)Z

    const-string v0, "HtcCdmaStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange, isVerizonLbsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$100(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->updateGPSONEIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V

    return-void
.end method
