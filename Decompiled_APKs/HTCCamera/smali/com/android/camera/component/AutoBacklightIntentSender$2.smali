.class Lcom/android/camera/component/AutoBacklightIntentSender$2;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoBacklightIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #calls: Lcom/android/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V
    invoke-static {v0}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    return-void
.end method
