.class Lcom/android/systemui/statusbar/preference/MobileNetwork$2;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->updateServiceState(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$800(Lcom/android/systemui/statusbar/preference/MobileNetwork;I)V

    return-void
.end method
