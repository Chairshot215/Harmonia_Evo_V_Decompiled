.class Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/rule/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneCallStateObserver"
.end annotation


# instance fields
.field hasRinging:Z

.field final synthetic this$0:Lcom/htc/omadm/rule/Rule;


# direct methods
.method constructor <init>(Lcom/htc/omadm/rule/Rule;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;->this$0:Lcom/htc/omadm/rule/Rule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/rule/Rule$PhoneCallStateObserver;->hasRinging:Z

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"
    .parameter "arg"

    .prologue
    .line 161
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/htc/omadm/rule/Rule;->mPhoneCallState:I

    .line 162
    sget-object v0, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneCallState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
