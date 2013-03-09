.class public final Lcom/htc/provider/ContactsContract$Intents;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/ContactsContract$Intents$Update;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
