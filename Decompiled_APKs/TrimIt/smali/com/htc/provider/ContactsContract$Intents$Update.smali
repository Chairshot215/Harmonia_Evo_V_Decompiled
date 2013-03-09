.class public Lcom/htc/provider/ContactsContract$Intents$Update;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PHONE:Ljava/lang/String; = "phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final synthetic this$0:Lcom/htc/provider/ContactsContract$Intents;


# direct methods
.method public constructor <init>(Lcom/htc/provider/ContactsContract$Intents;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/provider/ContactsContract$Intents$Update;->this$0:Lcom/htc/provider/ContactsContract$Intents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
