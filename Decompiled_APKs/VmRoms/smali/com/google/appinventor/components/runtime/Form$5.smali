.class Lcom/google/appinventor/components/runtime/Form$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #calls: Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$400(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method
