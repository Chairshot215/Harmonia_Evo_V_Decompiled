.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferReturnCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    const/4 v9, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "screenchange"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->access$200()Ljava/util/Map;

    move-result-object v7

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1, v9, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v4

    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;-><init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V

    invoke-static {v7}, Lcom/android/commands/monkey/MonkeySourceNetwork;->access$302(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0
.end method
