.class Lcom/htc/android/htcime/util/ContactsDBGenerator$2;
.super Ljava/lang/Object;
.source "ContactsDBGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/ContactsDBGenerator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$2;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$2;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #calls: Lcom/htc/android/htcime/util/ContactsDBGenerator;->loadContactsDB()V
    invoke-static {v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$200(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V

    .line 84
    return-void
.end method
