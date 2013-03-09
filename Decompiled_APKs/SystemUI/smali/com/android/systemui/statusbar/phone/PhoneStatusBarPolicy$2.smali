.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "createStorageManager+"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/storage/StorageManager;)Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/storage/StorageManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "createStorageManager-"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
