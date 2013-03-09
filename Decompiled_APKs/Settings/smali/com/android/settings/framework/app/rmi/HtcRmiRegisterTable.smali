.class Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;
.super Ljava/lang/Object;
.source "HtcRmiRegisterTable.java"


# static fields
.field public static final cacheClassTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/framework/app/rmi/HtcRmiCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final classTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->cacheClassTable:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    const-string v1, "RmiWirelessInvocator"

    const-class v2, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiWirelessInvocator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    const-string v1, "RmiDisplayInvocator"

    const-class v2, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    const-string v1, "RmiLocationInvocator"

    const-class v2, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiLocationInvocator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    const-string v1, "RmiApplicationInvocator"

    const-class v2, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    const-string v1, "RmiLanguageInvocator"

    const-class v2, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiLanguageInvocator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
