.class public interface abstract annotation Lcom/google/appinventor/components/annotations/DesignerComponent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/DesignerComponent;
        category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;
        description = ""
        designerHelpDescription = ""
        iconName = ""
        nonVisible = false
        showOnPalette = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract category()Lcom/google/appinventor/components/common/ComponentCategory;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract designerHelpDescription()Ljava/lang/String;
.end method

.method public abstract iconName()Ljava/lang/String;
.end method

.method public abstract nonVisible()Z
.end method

.method public abstract showOnPalette()Z
.end method

.method public abstract version()I
.end method
