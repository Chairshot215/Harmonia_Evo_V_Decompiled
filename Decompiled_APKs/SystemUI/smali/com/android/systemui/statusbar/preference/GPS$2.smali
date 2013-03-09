.class Lcom/android/systemui/statusbar/preference/GPS$2;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/GPS;->onStart()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$2;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$2;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$2;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    #getter for: Lcom/android/systemui/statusbar/preference/GPS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/GPS;->access$400(Lcom/android/systemui/statusbar/preference/GPS;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$2;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    #getter for: Lcom/android/systemui/statusbar/preference/GPS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/GPS;->access$400(Lcom/android/systemui/statusbar/preference/GPS;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
