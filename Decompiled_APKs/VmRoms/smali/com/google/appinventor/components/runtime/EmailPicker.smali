.class public Lcom/google/appinventor/components/runtime/EmailPicker;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A text box in which a user can begin entering an email address of a contact and be offered auto-completion.  The initial value of the box and the value after user entry is in the <code>Text</code> property.  If the <code>Text</code> property is initially empty, the contents of the <code>Hint</code> property will be faintly shown in the text box as a hint to the user.</p> <p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# instance fields
.field private final addressAdapter:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    new-instance v0, Landroid/widget/AutoCompleteTextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    new-instance v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->addressAdapter:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->addressAdapter:Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public GotFocus()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "GotFocus"

    const/4 v2, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "GotFocus"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
