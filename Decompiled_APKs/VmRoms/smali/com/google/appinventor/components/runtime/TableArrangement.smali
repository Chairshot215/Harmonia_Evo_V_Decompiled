.class public Lcom/google/appinventor/components/runtime/TableArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed in tabular form.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/TableLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/runtime/TableLayout;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public Columns()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getNumColumns()I

    move-result v0

    return v0
.end method

.method public Columns(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->setNumColumns(I)V

    return-void
.end method

.method public Rows()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getNumRows()I

    move-result v0

    return v0
.end method

.method public Rows(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->setNumRows(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForTableLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForTableLayout(Landroid/view/View;I)V

    return-void
.end method
