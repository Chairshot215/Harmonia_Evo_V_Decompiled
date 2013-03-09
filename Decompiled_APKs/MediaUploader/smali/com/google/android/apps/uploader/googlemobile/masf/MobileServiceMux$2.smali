.class final Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

.field final synthetic val$immediate:Z

.field final synthetic val$request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->val$request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iput-boolean p3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->val$request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iget-boolean v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$2;->val$immediate:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    return-void
.end method
