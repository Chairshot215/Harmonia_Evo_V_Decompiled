.class public abstract Lcom/google/appinventor/components/runtime/VisibleComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Height()I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation
.end method

.method public abstract Height(I)V
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation
.end method

.method public abstract Width()I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation
.end method

.method public abstract Width(I)V
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation
.end method
