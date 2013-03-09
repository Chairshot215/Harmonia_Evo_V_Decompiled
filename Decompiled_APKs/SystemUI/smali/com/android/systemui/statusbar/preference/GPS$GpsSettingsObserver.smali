.class final Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/GPS;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;Lcom/android/systemui/statusbar/preference/GPS$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;-><init>(Lcom/android/systemui/statusbar/preference/GPS;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    #calls: Lcom/android/systemui/statusbar/preference/GPS;->updateToggles()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/GPS;->access$000(Lcom/android/systemui/statusbar/preference/GPS;)V

    return-void
.end method
