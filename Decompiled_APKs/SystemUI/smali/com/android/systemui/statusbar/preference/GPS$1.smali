.class Lcom/android/systemui/statusbar/preference/GPS$1;
.super Landroid/os/Handler;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/GPS;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    new-instance v2, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    #setter for: Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/GPS;->access$202(Lcom/android/systemui/statusbar/preference/GPS;Landroid/content/ContentQueryMap;)Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    #getter for: Lcom/android/systemui/statusbar/preference/GPS;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/GPS;->access$200(Lcom/android/systemui/statusbar/preference/GPS;)Landroid/content/ContentQueryMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    #getter for: Lcom/android/systemui/statusbar/preference/GPS;->mGpsSettingsObserver:Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/GPS;->access$300(Lcom/android/systemui/statusbar/preference/GPS;)Lcom/android/systemui/statusbar/preference/GPS$GpsSettingsObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void
.end method
