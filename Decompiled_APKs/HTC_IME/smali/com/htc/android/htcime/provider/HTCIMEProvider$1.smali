.class Lcom/htc/android/htcime/provider/HTCIMEProvider$1;
.super Ljava/lang/Object;
.source "HTCIMEProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/provider/HTCIMEProvider;->setCurrentInternationalKeyboard([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/provider/HTCIMEProvider;

.field final synthetic val$args:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/provider/HTCIMEProvider;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;->this$0:Lcom/htc/android/htcime/provider/HTCIMEProvider;

    iput-object p2, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;->this$0:Lcom/htc/android/htcime/provider/HTCIMEProvider;

    #getter for: Lcom/htc/android/htcime/provider/HTCIMEProvider;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/provider/HTCIMEProvider;->access$000(Lcom/htc/android/htcime/provider/HTCIMEProvider;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/provider/HTCIMEProvider$1;->val$args:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->switchSIP(Ljava/lang/String;)V

    .line 304
    return-void
.end method
