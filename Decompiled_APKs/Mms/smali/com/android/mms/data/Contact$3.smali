.class final Lcom/android/mms/data/Contact$3;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact;->asyncUpdateContact(Lcom/android/mms/data/Contact;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/mms/data/Contact$3;->val$c:Lcom/android/mms/data/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/data/Contact$3;->val$c:Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/data/Contact;->updateContact(Lcom/android/mms/data/Contact;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)V

    .line 200
    return-void
.end method
