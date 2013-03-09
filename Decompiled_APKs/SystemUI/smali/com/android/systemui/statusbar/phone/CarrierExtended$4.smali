.class Lcom/android/systemui/statusbar/phone/CarrierExtended$4;
.super Landroid/database/ContentObserver;
.source "CarrierExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarrierExtended;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended$4;->this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->UpdateSettings()V

    return-void
.end method
