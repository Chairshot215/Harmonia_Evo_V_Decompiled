.class Lcom/htc/weather/AnimationList$1;
.super Ljava/lang/Object;
.source "AnimationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weather/AnimationList;->reloadAnimaitonDatas(Lcom/htc/weather/EnvSetting$Env;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/AnimationList;


# direct methods
.method constructor <init>(Lcom/htc/weather/AnimationList;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 607
    const-string v0, "AnimationList"

    const-string v1, "loadDataThreaed start initial mAnimationSetMap"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    const/16 v1, 0x37

    new-array v1, v1, [Lcom/htc/weather/animations/WeatherAnimationData;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/htc/weather/animations/Anim01;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim01;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/htc/weather/animations/Anim02;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim02;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/htc/weather/animations/Anim03;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim03;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/weather/animations/Anim04;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim04;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/htc/weather/animations/Anim05;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim05;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/htc/weather/animations/Anim06;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim06;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/htc/weather/animations/Anim07;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim07;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/htc/weather/animations/Anim08;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim08;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v6, v1, v2

    const/16 v2, 0xa

    aput-object v6, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/htc/weather/animations/Anim11;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim11;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/htc/weather/animations/Anim12;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim12;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/htc/weather/animations/Anim13;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim13;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/htc/weather/animations/Anim14;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim14;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/htc/weather/animations/Anim15;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim15;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/htc/weather/animations/Anim16;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim16;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/htc/weather/animations/Anim17;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim17;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/htc/weather/animations/Anim18;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim18;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/htc/weather/animations/Anim19;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim19;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/htc/weather/animations/Anim20;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim20;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/htc/weather/animations/Anim21;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim21;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/htc/weather/animations/Anim22;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim22;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/htc/weather/animations/Anim23;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim23;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/htc/weather/animations/Anim24;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim24;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/htc/weather/animations/Anim25;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim25;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/htc/weather/animations/Anim26;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim26;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    aput-object v6, v1, v2

    const/16 v2, 0x1c

    aput-object v6, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/htc/weather/animations/Anim29;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim29;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/htc/weather/animations/Anim30;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim30;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/htc/weather/animations/Anim31;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim31;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/htc/weather/animations/Windy;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Windy;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/htc/weather/animations/Anim33;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim33;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/htc/weather/animations/Anim34;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim34;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/htc/weather/animations/Anim35;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim35;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/htc/weather/animations/Anim36;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim36;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/htc/weather/animations/Anim37;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim37;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/htc/weather/animations/Anim38;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim38;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lcom/htc/weather/animations/Anim39;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim39;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lcom/htc/weather/animations/Anim40;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim40;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lcom/htc/weather/animations/Anim41;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim41;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/htc/weather/animations/Anim42;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim42;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lcom/htc/weather/animations/Anim43;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim43;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/htc/weather/animations/Anim43;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim43;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    aput-object v6, v1, v2

    const/16 v2, 0x2e

    aput-object v6, v1, v2

    const/16 v2, 0x2f

    aput-object v6, v1, v2

    const/16 v2, 0x30

    aput-object v6, v1, v2

    const/16 v2, 0x31

    aput-object v6, v1, v2

    const/16 v2, 0x32

    aput-object v6, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lcom/htc/weather/animations/Anim51;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim51;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lcom/htc/weather/animations/Anim52;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim52;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Lcom/htc/weather/animations/Anim53;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim53;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Lcom/htc/weather/animations/Anim54;

    iget-object v4, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weather/AnimationList;->access$100(Lcom/htc/weather/AnimationList;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mEnv:Lcom/htc/weather/EnvSetting$Env;
    invoke-static {v5}, Lcom/htc/weather/AnimationList;->access$200(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/EnvSetting$Env;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/weather/animations/Anim54;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    aput-object v3, v1, v2

    #setter for: Lcom/htc/weather/AnimationList;->mAnimationSetMap:[Lcom/htc/weather/animations/WeatherAnimationData;
    invoke-static {v0, v1}, Lcom/htc/weather/AnimationList;->access$002(Lcom/htc/weather/AnimationList;[Lcom/htc/weather/animations/WeatherAnimationData;)[Lcom/htc/weather/animations/WeatherAnimationData;

    .line 626
    iget-object v0, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;
    invoke-static {v0}, Lcom/htc/weather/AnimationList;->access$300(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/AnimationList$AnimationParseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/weather/AnimationList$1;->this$0:Lcom/htc/weather/AnimationList;

    #getter for: Lcom/htc/weather/AnimationList;->mAnimationParseListener:Lcom/htc/weather/AnimationList$AnimationParseListener;
    invoke-static {v0}, Lcom/htc/weather/AnimationList;->access$300(Lcom/htc/weather/AnimationList;)Lcom/htc/weather/AnimationList$AnimationParseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/weather/AnimationList$AnimationParseListener;->AnimationParseComplete()V

    .line 631
    :cond_0
    return-void
.end method
