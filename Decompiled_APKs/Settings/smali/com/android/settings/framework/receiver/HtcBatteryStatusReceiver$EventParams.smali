.class public Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;
.super Ljava/lang/Object;
.source "HtcBatteryStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventParams"
.end annotation


# instance fields
.field public health:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public iconSmall:I

.field public level:I

.field public percentage:F

.field public plugged:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public present:Z

.field public scale:I

.field public status:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public technology:Ljava/lang/String;

.field public temperature:I

.field final synthetic this$0:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

.field public voltage:I


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->this$0:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->iconSmall:I

    .line 150
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->scale:I

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->present:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->technology:Ljava/lang/String;

    .line 166
    iput v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->level:I

    .line 171
    iput v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->voltage:I

    .line 176
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->status:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 182
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->plugged:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 187
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->health:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 192
    iput v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->temperature:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->percentage:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  IconSmall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->iconSmall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->scale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->present:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->technology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " Percentage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->percentage:F

    const v2, 0x461c4000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "(%)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->voltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->status:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Plugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->plugged:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     Health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->health:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$EventParams;->temperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
