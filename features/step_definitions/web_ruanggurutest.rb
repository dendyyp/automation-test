Given("I visit {string}") do |string|
    visit string
end

When("I search for {string}") do |string|
    sleep 2
    find('[data-testid="search-input-field"]').click
    find('[data-testid="search-input-field"]').set(string)
    find('[data-testid="search-icon"]').click
end

Then("I should see search result for {string}") do |string|
    sleep 5
    find('[href="/course-detail/dasar-data-engineer-untuk-data-warehouse/COURSE-IY5A0WPF?courseType=SingleCourse"]')
end
