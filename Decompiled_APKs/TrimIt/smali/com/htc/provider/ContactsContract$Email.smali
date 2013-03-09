.class public final Lcom/htc/provider/ContactsContract$Email;
.super Lcom/htc/provider/ContactsContract$DefaultActionHelper;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
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
    .line 414
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Email;->IS_DEFAULT_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Email;->IS_DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/htc/provider/ContactsContract$DefaultActionHelper;-><init>()V

    return-void
.end method
