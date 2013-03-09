.class public Lcom/htc/provider/ContactsContract$DefaultActionHelper;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultActionHelper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static IS_DEFAULT_ACTION:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;->IS_DEFAULT_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$DefaultActionHelper;->IS_DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z
    .locals 1
    .parameter "resolver"
    .parameter
    .parameter "newDefaultDataId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    .local p1, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;->resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z

    move-result v0

    return v0
.end method
