.class public Lcom/google/appinventor/components/runtime/BarcodeScanner;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    iconName = "images/barcodeScanner.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final SCANNER_RESULT_NAME:Ljava/lang/String; = "SCAN_RESULT"

.field private static final SCAN_INTENT:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "AfterScan"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DoScan()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    goto :goto_0
.end method
