.class public Lcom/google/appinventor/components/runtime/HorizontalArrangement;
.super Lcom/google/appinventor/components/runtime/HVArrangement;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed from left to right.  If you wish to have components displayed one over another, use <code>VerticalArrangement</code> instead.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    return-void
.end method
