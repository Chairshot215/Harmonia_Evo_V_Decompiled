.class Lcom/google/appinventor/components/runtime/TinyWebDB$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueToStore:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->val$valueToStore:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;->val$valueToStore:Ljava/lang/Object;

    #calls: Lcom/google/appinventor/components/runtime/TinyWebDB;->postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$000(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
